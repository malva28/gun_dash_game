extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var resume = $"%Resume"
onready var mainmenu = $"%MainMenu"
onready var quit = $"%Quit"

onready var hover_sfx = $HoverSFX
onready var exit_sfx = $ExitSFX
onready var normal_sfx = $NormalSFX
onready var cancel_sfx = $CancelSFX


# Called when the node enters the scene tree for the first time.
func _ready():
	resume.connect("pressed", self, "_on_resume")
	mainmenu.connect("pressed", self, "_on_mainmenu")
	quit.connect("pressed", self, "_on_quit")
	
	hide()
	
	var buttons = [resume, mainmenu, quit]
	for button in buttons:
		button.connect("mouse_entered", self, "_on_hover")
	
func _input(event):
	if event.is_action_pressed("pause"):
		visible = !visible
		get_tree().paused = visible
	
	
func _on_resume():
	cancel_sfx.play()
	yield(cancel_sfx, "finished")
	hide()
	get_tree().paused = false
	
func _on_mainmenu():
	normal_sfx.play()
	yield(normal_sfx, "finished")
	
	get_tree().paused = false
	get_tree().change_scene("res://scenes/ui/main_menu.tscn")
	
func _on_quit():
	exit_sfx.play()
	yield(exit_sfx, "finished")
	
	get_tree().quit()

func _on_hover():
	hover_sfx.play()
