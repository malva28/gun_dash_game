extends KinematicBody



# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector3()
var z_dist = 4
var direction = 1
const grav = 0.1
const accel = 20
onready var anim_p = $AnimationPlayer
onready var anim_t = $AnimationTree
onready var playback = anim_t.get("parameters/playback")
onready var extra_bullet = $ExtraBullet


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, "_on_body_entered") # Replace with function body.

func _on_body_entered(body: Node):
	if body.has_method("_resolve_area_enter"):
		body._resolve_area_enter(self)
		
func _resolve_body_enter(body: Node):
	if body.has_method("_enemy1_enter"):
		body._enemy1_enter(self)
		
func _bullet_enter(bullet: KinematicBody):
	bullet.player_instance.hud.reload_one()
	extra_bullet.play_extra_ammo_anim_and_despawn()
	
	# TODO: agregar animacion de morir del enemigo despues
	yield(extra_bullet.anim_player, "animation_finished")
	
	if bullet.has_method("_enemy1_enter"):
		bullet._enemy1_enter(self)
	queue_free()
		
func _main_chara_enter(main_chara: KinematicBody):
	# Health loss
	main_chara.hud.whole_heart_damage()
	main_chara.main_chara_death()

func _physics_process(delta):
	velocity.x += accel * direction
	
