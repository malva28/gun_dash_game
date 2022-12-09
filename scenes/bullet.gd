extends KinematicBody

#var velocity = Vector3()
var SPEED = 8
var Velocity = Vector3()
var collision_info = null

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var player_instance = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func bind_player(player_inst):
	player_instance = player_inst
	
func _physics_process(delta):
	collision_info = move_and_collide(Velocity.normalized()*SPEED)
	if collision_info!=null:
		var collider = collision_info.collider
		var layer = null
		if collider.has_method("get_collision_layer"):
			layer = collider.get_collision_layer()
			if layer&1 == 1:
				print(collider)
				queue_free()
			if (layer>>1)&1 == 2:
					if collider.has_method("_resolve_body_enter"):
						collider._resolve_body_enter(self)
					queue_free()
			if (layer>>3)&1==1:
					print(collision_info.position)
					var x = transform.origin
					transform.basis.x = transform.basis.x.bounce(collision_info.normal)
					transform.basis.y = transform.basis.y.bounce(collision_info.normal)
					transform.origin = x


	translation += SPEED * transform.basis.x * delta

func _resolve_area_enter(area: Area):
	if area.has_method("_bullet_enter"):
		area._bullet_enter(self)

func _enemy1_enter(enemy1):
	queue_free()

func _main_chara_enter(main_chara):
	main_chara.hud.half_heart_damage()
	main_chara.main_chara_death()
