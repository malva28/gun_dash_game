extends Spatial
onready var character = $MainChara

onready var main_chara = $MainChara
onready var deathbox = $Deathbox

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	print("im ready")
	print(main_chara)
	print(deathbox)
	#deathbox.connect("body_entered", main_chara, "_on_Deathbox_body_entered", [deathbox])
	deathbox.connect("body_entered", main_chara, "_on_Deathbox_body_entered", [deathbox])

