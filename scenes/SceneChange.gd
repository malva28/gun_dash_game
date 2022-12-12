extends CanvasLayer
onready var animation_player = $AnimationPlayer

signal faded


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
func change_scene(scene: PackedScene):
	fade_out()
	yield(self,"faded")
	get_tree().change_scene_to(scene)
	fade_in()
