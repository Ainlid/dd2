extends Control

onready var label_seed = $label_seed
onready var save_dialog = $save_dialog
var current_seed

func _ready():
	current_seed = globals.seed_string
	label_seed.text = current_seed

func _pressed_copy():
	OS.set_clipboard(current_seed)

func _pressed_save():
	save_dialog.popup_centered()

func _save_confirmed(save_path):
	var file = File.new()
	file.open(save_path, File.WRITE)
	file.store_string(current_seed)
	file.close()
