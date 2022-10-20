extends MarginContainer

var hp = 3 setget set_hp

onready var hp_label = $hp

func set_hp(value):
	hp = value
	hp_label.text = "HP = %d" % hp

export(PackedScene) var Ammo
export(PackedScene) var Heart

var MAX_HP = 6
var current_hp = 6

var MAX_AMMO = 5
var ammo_count = 5
onready var ammo_display = $VBoxContainer/ammoDisplay
onready var hp_display = $VBoxContainer/HPDisplay

var current_hearts = []
var lost_hearts = []

var remaining = []
var used = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in range(MAX_AMMO):
		var ammo = Ammo.instance()
		remaining.push_back(ammo)
		ammo_display.add_child(ammo)
		
	for n in range(MAX_HP/2):
		var heart = Heart.instance()
		current_hearts.push_back(heart)
		hp_display.add_child(heart)
		
		
func reduce_ammo():
	if ammo_count > 0:
		var used_bullet = remaining.pop_back()
		used_bullet.disable_ammo()
		used.push_back(used_bullet)
		ammo_count -= 1
		return true
	else:
		return false

func reload_all():
	var n = 0
	while n < MAX_AMMO and not used.empty():
		var reloaded_bullet = used.pop_back()
		reloaded_bullet.enable_ammo()
		remaining.push_back(reloaded_bullet)
		ammo_count += 1
		n += 1
	if n == 0:
		return false
	else:
		return n
		
		
func whole_heart_damage():
	print("current_hp: ",current_hp)
	if current_hp > 0:
		var lost_heart = current_hearts.pop_back()
		lost_heart.to_empty_heart()
		lost_hearts.push_back(lost_heart)
		if current_hp <= 1:
			current_hp -= 1
		else:
			current_hp -= 2
			if lost_heart.is_half():
				var top_heart =  current_hearts.back()
				top_heart.to_half_heart()
		for it in current_hearts:
			print("status", it.heart_status)
		for it in lost_hearts:
			print("status", it.heart_status)
		return true
	else:
		return false

func whole_heart_recover():
	if current_hp < MAX_HP:
		var top_heart =  current_hearts.back()
		if current_hp >= MAX_HP-1:
			top_heart.to_full_heart()
			current_hp += 1
		else:
			var recovered_heart = lost_hearts.pop_back()
			if top_heart.is_half():
				top_heart.to_full_heart()
				recovered_heart.to_half_heart()			
			else:
				recovered_heart.to_full_heart()
			current_hearts.push_back(recovered_heart)
			current_hp += 2
		return true
	else:
		return false
			
		
func half_heart_damage():
	if current_hp > 0:
		var top_heart =  current_hearts.back()
		if top_heart.is_full():
			top_heart.to_half_heart()
			
		else:
			top_heart.to_empty_heart()
			lost_hearts.push_back(current_hearts.pop_back())
		current_hp -= 1
		return true
	else:
		return false
		
func half_heart_recover():
	if current_hp < MAX_HP:
		var top_heart =  current_hearts.back()
		if top_heart.is_half():
			top_heart.to_full_heart()
		else:
			var recovered_heart = lost_hearts.pop_back()
			recovered_heart.to_half_heart()
			current_hearts.push_back(recovered_heart)
		current_hp += 1
		return true
	else:
		return false
			
