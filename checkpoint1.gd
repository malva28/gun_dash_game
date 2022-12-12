extends Area

var reached = false
onready var check_sfx = $CheckSFX

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_checkpoint1_body_entered(body):
	if body.name == "MainChara":
		if !reached:
			check_sfx.play()
			reached = true
		Checkpoint._update_spawn(Vector3(global_transform.origin.x, global_transform.origin.y, -4))
