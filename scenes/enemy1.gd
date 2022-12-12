extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var anim_tree = $AnimationTree
onready var anim_player = $AnimationPlayer
onready var extra_bullet = $ExtraBullet
onready var playback = anim_tree.get("parameters/playback")


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
	bullet.queue_free()
	extra_bullet.play_extra_ammo_anim_and_despawn()
	
	# TODO: agregar animacion de morir del enemigo despues
	playback.travel("dead_i_d")
	yield(extra_bullet.anim_player, "animation_finished")
	
	queue_free()
		
func _main_chara_enter(main_chara: KinematicBody):
	# Health loss
	main_chara.hud.whole_heart_damage()
	main_chara.main_chara_death()

