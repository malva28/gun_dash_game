extends CanvasLayer
onready var animation_player = $AnimationPlayer

signal faded


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func fade_in():
	animation_player.play("fade_in")
	yield(animation_player,"animation_finished")
	emit_signal("faded")
func fade_out():
	animation_player.play("fade_out")
	yield(animation_player,"animation_finished")
	emit_signal("faded")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
