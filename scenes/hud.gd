extends MarginContainer


var hp = 3 setget set_hp

onready var hp_label = $hp

func set_hp(value):
	hp = value
	hp_label.text = "HP = %d" % hp
