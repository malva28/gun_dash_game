extends Area
export (PackedScene) var next_level

func _ready():
	connect("body_entered", self, "_on_body_entered")


func _on_body_entered(body: Player): 
	SceneChange.fade_out()
	yield(SceneChange,"faded")
	get_tree().change_scene_to(next_level)
	SceneChange.fade_in()
	
