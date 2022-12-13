extends Area
export (PackedScene) var next_level
export (Vector3) var spawn_point

func _ready():
	connect("body_entered", self, "_on_Goal_body_entered")
#func _on_body_entered(body: Player): 
#	print(body)

func _on_Goal_body_entered(body):
	SceneChange.fade_out()
	yield(SceneChange,"faded")
	Checkpoint._update_spawn(spawn_point)
	get_tree().change_scene_to(next_level)
	SceneChange.fade_in()
