extends Spatial

onready var anim_player = $AnimationPlayer
onready var extra_sfx = $ExtraSFX

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#extra_sfx.play()
	pass

func play_extra_ammo_anim_and_despawn():
	extra_sfx.play()
	anim_player.play("extra_bullet")
	yield(anim_player, "animation_finished")
	queue_free()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
