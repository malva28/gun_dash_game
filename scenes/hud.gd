extends MarginContainer

var hp = 3 setget set_hp

onready var hp_label = $hp

func set_hp(value):
	hp = value
	hp_label.text = "HP = %d" % hp

export(PackedScene) var Ammo

var MAX_AMMO = 5
var ammo_count = 5
onready var ammo_display = $VBoxContainer/ammoDisplay

var remaining = []
var used = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in range(MAX_AMMO):
		var ammo = Ammo.instance()
		remaining.push_back(ammo)
		ammo_display.add_child(ammo)
		
func reduce_ammo():
	if ammo_count > 0:
		var used_bullet = remaining.pop_back()
		used_bullet.disable_ammo()
		used.push_back(used_bullet)
		print(used_bullet)
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

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
