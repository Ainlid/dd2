extends Control

onready var filedialog = $filedialog

onready var line_edit = $line_edit

onready var string_gen = $string_gen

var seed_value

func _load_pressed():
	filedialog.popup_centered()

func _file_selected(path):
	var file = File.new()
	if file.file_exists(path):
		file.open(path, file.READ)
		seed_value = file.get_as_text()
		file.close()
		_load_dream()

func _line_confirmed():
	seed_value = line_edit.text
	_load_dream()

func _rand_pressed():
	line_edit.text = string_gen._rand_string(20)

func _load_dream():
	globals._reseed_rng(seed_value)
	fader._fade_start(fader.dream_path)
