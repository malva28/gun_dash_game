extends Spatial


onready var main_chara = $MainChara
onready var tower = $Tower

onready var deathbox = $Deathbox


func _ready():
	deathbox.connect("body_entered", main_chara, "_on_Deathbox_body_entered", [deathbox])
	tower.bind_player(main_chara)

