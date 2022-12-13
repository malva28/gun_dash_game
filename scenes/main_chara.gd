class_name Player
extends KinematicBody

export(PackedScene) var Bullet
var cp_pos = Vector3(0,2,-4)
var velocity = Vector3()
var hp = 3
var dead = false
const  ACCELERATION = 10
const SHOOT_ACCEL = 7
const SPEED = 2
const JUMP_SPEED = 2
const GRAVITY = 0.1

const bulletPath = preload("res://scenes/bullet.tscn")

var z_distance = 4 # distancia de la camara a Z
var movement_enabled = true
var just_landed = true
var walking_start = true

onready var pivot = $Pivot
onready var arm = $arm
onready var camera = $Camera
onready var camera_fall = $cameraFall

onready var bullet_spawn = $arm/BulletSpawn
onready var hud = $Control/hud
onready var Tombstone = preload("res://scenes/Tombstone.tscn")


onready var anim_player = $AnimationPlayer
onready var anim_tree = $AnimationTree

onready var playback = anim_tree.get("parameters/playback")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var fire_sfx = $FireSFX
onready var walk_sfx = $WalkSFX
onready var walk_timer = $WalkSFXTimer

onready var land_sfx = $LandSFX
onready var jump_sfx = $JumpSFX
onready var hurt_sfx = $HurtSFX
onready var die_sfx = $DieSFX


# Called when the node enters the scene tree for the first time.
func _ready():
	self.transform.origin = Checkpoint.spawn_point
	anim_tree.active = true
	
	walk_timer.connect("timeout", self, "_on_walk_timeout")
	
#func _process(delta: float) -> void:
#	$arm.look_at(get_global_mouse_position())


func _physics_process(delta):
	#time += delta
	velocity = move_and_slide(velocity, Vector3(0,1,0))
	
	var move_input = Input.get_axis("move_left", "move_right")
	
	velocity.y -= GRAVITY  
	
	if movement_enabled:
		var mouse_pos_viewport = get_viewport().get_mouse_position()
		var adjusted_pos = camera.project_position(mouse_pos_viewport, z_distance)
		
		var mouse_pos = Vector2(adjusted_pos.x, adjusted_pos.y)
		var chara_pos = Vector2(transform.origin.x, transform.origin.y)
		
		var angle = (mouse_pos - chara_pos).angle()
		var shoot_momentum = _shoot_process(angle)
		arm.rotation = Vector3(0,0, angle)
		if angle >= -1.5 and angle <= 1.5:
			arm.scale.y = 1
		else:
			arm.scale.y = -1
		
		if Input.is_action_just_pressed("Disparo") and hud.reduce_ammo():
			fire_sfx.play()
			
			velocity.x = +shoot_momentum.x
			velocity.y = +shoot_momentum.y
			_disparo()
	
		if is_on_floor() and Input.is_action_just_pressed("jump"):
			jump_sfx.play()
			velocity.y = +JUMP_SPEED

		if Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
			pivot.scale.x =1
		if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
			pivot.scale.x =-1
	else: 
		velocity.x = 0
		move_input = 0

	velocity.x = move_toward(velocity.x, move_input * SPEED, ACCELERATION * delta)

	### SI CAE EN UN SPIKE POR ENCIMA RECIBE DAÑO
	for i in get_slide_count():
		var collision_info = get_slide_collision(i)
		if collision_info.collider.has_method("get_collision_layer"):
			var layer = collision_info.collider.get_collision_layer()
			if (layer>>5)==1:
				play_hurt_sfx_once()
				velocity += 3 * collision_info.normal
				hud.whole_heart_damage()
				main_chara_death()
				
	### SI ESTA EN EL SUELO, RECARGA
	if is_on_floor():
		hud.reload_all()
	
	play_land_sfx_once()
		
	### Animation logic
	if is_on_floor():
# warning-ignore:integer_division
		if abs(velocity.x) > SPEED/10.0:
			playback.travel("run")
		else:
			
			playback.travel("idle")
	else:
		
		if velocity.y > 0:
			playback.travel("jump_begin")
		else:
			playback.travel("jump_fall")
	play_walk_sfx_loop(velocity)
			
func play_walk_sfx_loop(velocity):
	if is_on_floor() and abs(velocity.x) > SPEED/2.0:
		if walk_timer.is_stopped():
			walk_timer.start(0.3)
	else:
		if !walk_timer.is_stopped():
			yield(walk_timer, "timeout")
			walk_timer.stop()
		
	#if is_on_floor() and abs(velocity.x) > SPEED/2.0:
	#	print("velocity x ", velocity.x)
	#	if walking_start and !walk_sfx.playing:
	#			#print("playback:", walk_sfx.get_playback_position() ) 
	#			walk_sfx.play()
	#			walking_start = false
	#else:
	#	if !walking_start:
			
	#		if (walk_sfx.get_playback_position() > 0.210000) and walk_sfx.playing:
	#			walk_sfx.stop()
				
	#			walking_start = true
				
func _on_walk_timeout():
	walk_sfx.play()

func play_land_sfx_once():
	if is_on_floor():
		if just_landed:
			land_sfx.play()
			just_landed = false
	else:
		if !just_landed:
			if land_sfx.playing:
				yield(land_sfx, "finished")
			just_landed = true
			
func play_hurt_sfx_once():
	if !dead:
		hurt_sfx.play()
		
func play_dead_once():
	die_sfx.play()

		
func _shoot_process(angle):
	var y_movement = -1 * SHOOT_ACCEL * sin(angle)
	var x_movement = -1 * SHOOT_ACCEL * cos(angle)
	$Camera
	return Vector2(x_movement, y_movement)
	
func _disparo():
	var bullet = Bullet.instance()
	bullet.bind_player(self)
	
	get_parent().add_child(bullet)
	bullet.global_transform = bullet_spawn.get_global_transform()
	#bullet.velocity = get_viewport().get_mouse_position() - bullet.position
	
func main_chara_death():
	if hud.current_hp <= 0 and !dead:
		movement_enabled = false
		var gun = get_node("arm")
		if gun:
			gun.queue_free()
		dead = true
		var tombstone = Tombstone.instance()
		get_parent().add_child(tombstone)
		tombstone.global_transform = self.global_transform
		tombstone.camera.make_current()
		hide()
		var t = Timer.new()
		t.set_wait_time(3)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")

		die()

		
func _resolve_area_enter(area: Area):
	if area.has_method("_main_chara_enter"):
		area._main_chara_enter(self)
	if hud.current_hp <= 0:
		main_chara_death()

func save_checkpoint(pos_x, pos_y, pos_z):
	cp_pos.x = pos_x
	cp_pos.y = pos_y
	cp_pos.z = pos_z
	
	
func die():
	if hud.current_hp <= 0:
		SceneChange.fade_out()
		yield(SceneChange,"faded")
		get_tree().reload_current_scene()
		SceneChange.fade_in()
		

func _on_Deathbox_body_entered(body, dedbox):
	if body.name == "MainChara":
		print(dedbox)
		var body_pos = body.transform.origin
		dedbox.camera.global_transform = camera.global_transform
		dedbox.camera.set_current(true)
		
		die_sfx.play()
		hud.current_hp = 0
		
		var t = Timer.new()
		t.set_wait_time(3)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")	
		
		die()

func _resolve_body_enter(body: KinematicBody):
	if body.has_method("_main_chara_enter"):
		
		body._main_chara_enter(self)
		

