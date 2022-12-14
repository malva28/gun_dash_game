extends TextureRect

var is_active

onready var anim_player = $AnimationPlayer
onready var anim_tree = $AnimationTree
onready var playback = anim_tree.get("parameters/playback")

func disable_ammo():
	is_active = false
	playback.travel("faded")
	
func enable_ammo():
	is_active = true
	playback.travel("normal")

# Called when the node enters the scene tree for the first time.
func _ready():
	is_active = true
	anim_tree.active = true

