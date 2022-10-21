extends TextureRect

enum {EMPTY_HEART, HALF_HEART, FULL_HEART}

var heart_status

onready var anim_player = $AnimationPlayer
onready var anim_tree = $AnimationTree
onready var playback = anim_tree.get("parameters/playback")

# Called when the node enters the scene tree for the first time.
func _ready():
	heart_status = FULL_HEART
	anim_tree.active = true

func to_half_heart():
	heart_status = HALF_HEART
	playback.travel("heart_half")

func to_full_heart():
	heart_status = FULL_HEART
	playback.travel("heart_full")

func to_empty_heart():
	heart_status = EMPTY_HEART
	playback.travel("heart_empty")
	
func is_full():
	return heart_status == FULL_HEART
	
func is_half():
	return heart_status == HALF_HEART

func is_empty():
	return heart_status == EMPTY_HEART
