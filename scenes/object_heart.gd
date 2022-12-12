extends Spatial

onready var recover_sfx = $RecoverSFX


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, "_on_body_entered") # Replace with function body.

func _on_body_entered(body: Node):
	if body.has_method("_resolve_area_enter"):
		body._resolve_area_enter(self)
		
func _main_chara_enter(main_chara: KinematicBody):
	# Health recover
	
	var res = main_chara.hud.whole_heart_recover()
	if res:
		recover_sfx.play()
