extends Area

#var velocity = Vector3()
var SPEED = 8


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, "_on_body_entered")

func _physics_process(delta):
	#var collision_info = move_and_collide(velocity.normalized()*delta*speed)
	translation += SPEED * transform.basis.x * delta
	

func _on_body_entered(body):
	var layer = body.get_collision_layer()
	print(layer>>3)
	if layer == 1:
		queue_free()
	elif layer == 8:
		print(body.transform.origin)
		var direction = (transform.origin - body.transform.origin).normalized()
		#var angle = direction.angle()
		#self.rotation = angle_to(direction)
		#
		#translation  += direction * SPEED *  2
