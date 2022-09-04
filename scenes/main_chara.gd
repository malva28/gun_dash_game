extends KinematicBody

var velocity = Vector3()

const  ACCELERATION = 10
const SPEED = 2
const JUMP_SPEED = 2
const GRAVITY = 0.1

onready var arm = $arm

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
#func _process(delta: float) -> void:
#	$arm.look_at(get_global_mouse_position())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	pass
	velocity = move_and_slide(velocity, Vector3(0,1,0))
	
	var move_input = Input.get_axis("move_left", "move_right")
	
	
	
	velocity.x = move_toward(velocity.x, move_input * SPEED, ACCELERATION * delta)
	
	velocity.y -= GRAVITY
	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = +JUMP_SPEED
		

