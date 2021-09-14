extends Node

onready var players = [$player1, $player2, $player3]

func _ready():
	_bgm_start()

func _bgm_start():
	for n in players.size():
		var id = globals.dream_rng.randi()%globals.loops.size()
		var loop = globals.loops[id]
		players[n].stream = loop
		var start_point = globals.dream_rng.randf_range(0.0, loop.get_length())
		var rand_note = globals.dream_rng.randi_range(-6, 6)
		players[n].pitch_scale = pow(2.0, rand_note / 12.0)
		players[n].play(start_point)
