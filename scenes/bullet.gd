extends KinematicBody

#var velocity = Vector3()
var SPEED = 8
var Velocity = Vector3()
var collision_info = null
var collisions_left = 6

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _physics_process(delta):
	collision_info = move_and_collide(Velocity.normalized()*SPEED)
	if collision_info!=null and collisions_left>0:
		collisions_left -= 1
		print(collisions_left)
		var collider = collision_info.collider
		var layer = null
		if collider.has_method("get_collision_layer"):
			layer = collider.get_collision_layer()
			if layer&1 == 1:
					queue_free()
			if (layer>>1)&1 == 2:
					if collider.has_method("_resolve_body_enter"):
						collider._resolve_body_enter(self)
					queue_free()
			if (layer>>3)&1==1:
					var x = transform.origin
					transform.basis.x = transform.basis.x.bounce(collision_info.normal)
					transform.basis.y = transform.basis.y.bounce(collision_info.normal)
					transform.origin = x
	elif collisions_left<=0 :
		queue_free()


	translation += SPEED * transform.basis.x * delta

func _main_chara_enter(main_chara):
	main_chara.hud.half_heart_damage()
	main_chara.main_chara_death()
