extends Button

onready var filedialog = $filedialog

func _pressed():
	filedialog.popup_centered()

func _file_selected(path):
	var file = File.new()
	if file.file_exists(path):
		file.open(path, file.READ)
		var seed_value = file.get_as_text()
		print(seed_value)
		globals._reseed_rng(seed_value)
		fader._fade_start(fader.dream_path)
		file.close()
