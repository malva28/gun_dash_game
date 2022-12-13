extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var resume = $"%Resume"
onready var mainmenu = $"%MainMenu"
onready var quit = $"%Quit"

# Called when the node enters the scene tree for the first time.
func _ready():
	resume.connect("pressed", self, "_on_resume")
	mainmenu.connect("pressed", self, "_on_mainmenu")
	quit.connect("pressed", self, "_on_quit")
	
	hide()
	
	
	
	
func _input(event):
	if event.is_action_pressed("pause"):
		visible = !visible
		get_tree().paused = visible
	
	
func _on_resume():
	hide()
	get_tree().paused = false
	
func _on_mainmenu():
	get_tree().paused = false
	get_tree().change_scene("res://scenes/ui/main_menu.tscn")
	
func _on_quit():
	get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
