extends KinematicBody

#var velocity = Vector3()
var SPEED = 8
var Velocity = Vector3()
var collision_info = null

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, "_on_body_entered")

func _physics_process(delta):
	collision_info = move_and_collide(Velocity.normalized()*SPEED)
	if collision_info!=null:
		var collider = collision_info.collider
		var layer = null
		if collider.has_method("get_collision_layer"):
			layer = collider.get_collision_layer()
		if layer == 1:
			queue_free()
		elif layer == 8:
			var x = transform.origin
			transform = transform.rotated(Vector3(0,0,1), -2 * transform.basis.x.angle_to(collision_info.normal))
			transform.origin = x

	translation += SPEED * transform.basis.x * delta
	

func _on_body_entered(body):
	var layer = body.get_collision_layer()
	if layer == 1:
		queue_free()
	elif layer == 8:
		print("shoot!")

