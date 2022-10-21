extends KinematicBody

export(PackedScene) var Bullet

var velocity = Vector3()
var hp = 3

const  ACCELERATION = 10
const SHOOT_ACCEL = 7
const SPEED = 2
const JUMP_SPEED = 2
const GRAVITY = 0.1

const bulletPath = preload("res://scenes/bullet.tscn")

var z_distance = 4 # distancia de la camara a Z

onready var pivot = $Pivot
onready var arm = $arm
onready var camera = $Camera
onready var bullet_spawn = $arm/BulletSpawn
onready var hud = $Control/hud

onready var anim_player = $AnimationPlayer
onready var anim_tree = $AnimationTree

onready var playback = anim_tree.get("parameters/playback")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	anim_tree.active = true
	
#func _process(delta: float) -> void:
#	$arm.look_at(get_global_mouse_position())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	#time += delta
	velocity = move_and_slide(velocity, Vector3(0,1,0))
	
	var move_input = Input.get_axis("move_left", "move_right")
	
	velocity.x = move_toward(velocity.x, move_input * SPEED, ACCELERATION * delta)
	
	velocity.y -= GRAVITY  
	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = +JUMP_SPEED

	
	var mouse_pos_viewport = get_viewport().get_mouse_position()
	var adjusted_pos = camera.project_position(mouse_pos_viewport, z_distance)
	
	var mouse_pos = Vector2(adjusted_pos.x, adjusted_pos.y)
	var chara_pos = Vector2(transform.origin.x, transform.origin.y)
	
	var angle = (mouse_pos - chara_pos).angle()
	var shoot_momentum = _shoot_process(angle)
	
	arm.rotation = Vector3(0,0, angle)
	
	### SI NO QUEDAN BALAS, NO DISPARAR
	if Input.is_action_just_pressed("Disparo") and hud.reduce_ammo():
		velocity.x = +shoot_momentum.x
		velocity.y = +shoot_momentum.y
		_disparo()
		
	### SI ESTA EN EL SUELO, RECARGA
	if is_on_floor():
		hud.reload_all()
		
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
		
	if Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
		pivot.scale.x =1
	if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
		pivot.scale.x =-1
		
	
	

func _shoot_process(angle):
	var y_movement = -1 * SHOOT_ACCEL * sin(angle)
	var x_movement = -1 * SHOOT_ACCEL * cos(angle)
	$Camera
	return Vector2(x_movement, y_movement)
	
func _disparo():
	var bullet = Bullet.instance()
	get_parent().add_child(bullet)
	bullet.global_transform = bullet_spawn.get_global_transform()
	#bullet.velocity = get_viewport().get_mouse_position() - bullet.position
		
func _resolve_area_enter(area: Area):
	if area.has_method("_main_chara_enter"):
		area._main_chara_enter(self)
