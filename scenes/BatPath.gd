extends PathFollow


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var runspeed = 1

# Called when the node enters the scene tree for the first time.
func _process(delta):
	set_offset(get_offset() + runspeed * delta) # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
