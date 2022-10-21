extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, "_on_body_entered") # Replace with function body.

func _on_body_entered(body: Node):
	if body.has_method("_resolve_area_enter"):
		body._resolve_area_enter(self)
		
func _main_chara_enter(main_chara: KinematicBody):
	# Health loss
	main_chara.hud.whole_heart_damage()
	main_chara.main_chara_death()
