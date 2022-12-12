extends MarginContainer


onready var play = $VBoxContainer/Play
onready var credits = $VBoxContainer/Credits
onready var exit = $VBoxContainer/Exit

onready var hover_sfx = $HoverSFX
onready var exit_sfx = $ExitSFX
onready var play_sfx = $PlaySFX
onready var normal_sfx =$NormalSFX


# Called when the node enters the scene tree for the first time.
func _ready():
	play.connect("pressed", self, "_on_play_pressed")
	credits.connect("pressed", self, "_on_credits_pressed")
	exit.connect("pressed", self, "_on_exit_pressed")
	
	var buttons = [play, credits, exit]
	
	for button in buttons:
		button.connect("mouse_entered", self, "_on_hover")
	

func _on_play_pressed():
	play_sfx.play()
	get_tree().change_scene("res://scenes/main.tscn")
	
func _on_exit_pressed():
	exit_sfx.play()
	yield(exit_sfx, "finished")
	get_tree().quit()
	
func _on_credits_pressed():
	normal_sfx.play()
	print("aaaaa")
	
	
func _on_hover():
	hover_sfx.play()

