extends Spatial

const MAX_ANIM_TIME = 60.0

var animation_time = 0.0

var player_instance = null
var prev_pos_x = 0.0

onready var anim_player = $AnimationPlayer

func bind_player(player_inst):
	player_instance = player_inst
	
func update_rotation():
	if player_instance != null:
		var chara_pos_x = player_instance.transform.origin.x
		
		var curr_vel_x = player_instance.velocity.x
		var delta_v = chara_pos_x - prev_pos_x 
		animation_time -= delta_v
		animation_time = fposmod(animation_time, MAX_ANIM_TIME)
		
		prev_pos_x = chara_pos_x 
	
	
func _ready() -> void:
	anim_player.play("rotate")

func _process(_delta: float) -> void:
	anim_player.seek(animation_time)
	update_rotation()
