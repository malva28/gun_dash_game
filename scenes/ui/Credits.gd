extends MarginContainer


onready var scr_container = $ScrollContainer
onready var cr_container = $ScrollContainer/CreditsContainer

var scroll_speed = 2
var scroll_ended = false
var creditos = [
	{
	"name": "Low Poly Gun Models",
	"auth": "chilly-durango.itch.io"
},
{
	"name": "Peaberry Pixel Font",
	"auth": "emhuo.itch.io"
},
{
	"name": "Planet Garlic Font",
	"auth": "fontesk.com/designer/joe-letter/"
},
{
	"name": "simple pixel art bat sprite",
	"auth": "opengameart.org/content/bat-sprite"
},
{
	"name": "Tombstone",
	"auth": "ato"
},
{
	"name": "Low Poly Medieval Tower",
	"auth": "incoxd.itch.io"
},
{
	"name": "Low Poly Gems - Heart",
	"auth": "godgoldfear.itch.io"
},
{
	"name": "Custom Bars",
	"auth": "antrixglow98.itch.io"
},
{
	"name": "Basic Platforming Tiles",
	"auth": "loafbrr.itch.io"
},
{
	"name": "Jump, Damage, Healing and Bullet SFX",
	"auth": "jdwasabi.itch.io"
},
{
	"name": "Landing and Walking SFX",
	"auth": "leohpaz.itch.io"
},
{
	"name": "Checkpoint, Shooting and Enemy damage SFX",
	"auth": "edwardcufaude.itch.io"
},
{
	"name": "Bat Flight SFX",
	"auth": "leohpaz.itch.io"
},
{
	"name": "Tombstone SFX",
	"auth": "harvey656.itch.io"
}
]


# Called when the node enters the scene tree for the first time.
func _ready():
	for credit in creditos:
		var h_separator = HSeparator.new()
		var name_label = _create_label(credit.name)
		var auth_label = _create_label(credit.auth)
		auth_label.add_color_override("font_color", Color(0,1,0))
		cr_container.add_child(h_separator)
		cr_container.add_child(name_label)
		cr_container.add_child(auth_label)
	var h_separator = HSeparator.new()
	var h_separator1 = HSeparator.new()
	var h_separator2 = HSeparator.new()
	var h_separator3 = HSeparator.new()
	var feli = Label.new()
	var ato = Label.new()
	var vale = Label.new()
	var franz = Label.new()
	feli.text = "Felipe Borjas"
	feli.align = Label.ALIGN_CENTER
	feli.autowrap = true
	feli.add_color_override("font_color", Color(1,0,1))
	var based = Label.new()
	based.text = "Based Team"
	based.align = Label.ALIGN_CENTER
	based.autowrap = true
	based.add_color_override("font_color", Color(0,0,1))
	ato.text = "Antonio Torga"
	ato.align = Label.ALIGN_CENTER
	ato.autowrap = true
	ato.add_color_override("font_color", Color(1,0,1))
	vale.text = "Valentina Garrido"
	vale.align = Label.ALIGN_CENTER
	vale.autowrap = true
	vale.add_color_override("font_color", Color(1,0,1))
	franz.text = "Franz Widerstrom"
	franz.align = Label.ALIGN_CENTER
	franz.autowrap = true
	franz.add_color_override("font_color", Color(1,0,1))
	cr_container.add_child(h_separator)
	cr_container.add_child(h_separator1)
	cr_container.add_child(based)
	cr_container.add_child(h_separator2)
	cr_container.add_child(h_separator3)
	cr_container.add_child(ato)
	cr_container.add_child(feli)
	cr_container.add_child(franz)
	cr_container.add_child(vale)
	
	
	scr_container.scroll_vertical = 0
	scr_container.connect("scroll_ended", self, "_on_scroll_ended")
	
func _physics_process(delta):
	var last_scroll = scr_container.scroll_vertical
	scr_container.scroll_vertical += scroll_speed
	var new_scroll = scr_container.scroll_vertical
	if last_scroll == new_scroll:
		scroll_ended == true
		_to_main_menu()
	
	
func _create_label(text) -> Label:
	var label = Label.new()
	label.text = text
	label.align = Label.ALIGN_CENTER
	label.autowrap = true
	return label
	
func _to_main_menu():
	if not scroll_ended:
		scroll_ended = true
		yield(get_tree().create_timer(3), "timeout")
		get_tree().change_scene("res://scenes/ui/main_menu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
