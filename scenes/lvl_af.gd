extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var dash_chara = $MainChara
onready var tower = $Tower

# Called when the node enters the scene tree for the first time.
func _ready():
	tower.bind_player(dash_chara)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
