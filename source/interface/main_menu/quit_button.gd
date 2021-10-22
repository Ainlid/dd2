extends Button

var timer

func _ready():
	timer = $timer

func _pressed():
	fader._fade_out()
	timer.start()

func _quit_game():
	get_tree().quit()
