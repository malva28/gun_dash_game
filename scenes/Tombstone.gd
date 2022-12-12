extends KinematicBody
const GRAVITY = 0.1
const SPEED = 2
onready var camera = $Camera_Tombstone
onready var die_sfx = $DieSFX

var velocity = Vector3()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	play_dead_once()
	pass # Replace with function body.

func play_dead_once():
	die_sfx.play()

func _physics_process(delta):
		velocity.y -= GRAVITY  
		velocity.x = 0
		velocity = move_and_slide(velocity, Vector3(0,1,0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

