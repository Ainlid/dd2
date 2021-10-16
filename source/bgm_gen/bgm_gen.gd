extends Node

onready var player1 = $player1
onready var player2 = $player2
onready var player3 = $player3
var offset1 = 0.0
var offset2 = 0.0
var offset3 = 0.0
onready var timer = $timer

func _ready():
	timer.wait_time = globals.dream_rng.randf_range(2.0, 4.0)
	timer.start()
	_set_players()
	_play_loops()

func _set_players():
	#PLAYER1
	var id1 = globals.dream_rng.randi()%globals.loops.size()
	var loop1 = globals.loops[id1]
	player1.stream = loop1
	offset1 = globals.dream_rng.randf_range(0.0, loop1.get_length())
	var rand_note1 = globals.dream_rng.randi_range(-6, 6)
	player1.pitch_scale = pow(2.0, rand_note1 / 12.0)
	#player1.pitch_scale = globals.dream_rng.randf_range(0.8, 1.2)
	#PLAYER2
	var id2 = globals.dream_rng.randi()%globals.loops.size()
	var loop2 = globals.loops[id2]
	player2.stream = loop2
	offset2 = globals.dream_rng.randf_range(0.0, loop2.get_length())
	var rand_note2 = globals.dream_rng.randi_range(-6, 6)
	player2.pitch_scale = pow(2.0, rand_note2 / 12.0)
	#player2.pitch_scale = globals.dream_rng.randf_range(0.8, 1.2)
	#PLAYER3
	var id3 = globals.dream_rng.randi()%globals.loops.size()
	var loop3 = globals.loops[id3]
	player3.stream = loop3
	offset3 = globals.dream_rng.randf_range(0.0, loop3.get_length())
	var rand_note3 = globals.dream_rng.randi_range(-6, 6)
	player3.pitch_scale = pow(2.0, rand_note3 / 12.0)
	#player3.pitch_scale = globals.dream_rng.randf_range(0.8, 1.2)

func _timeout():
	_play_loops()

func _play_loops():
	player1.play(offset1)
	player2.play(offset2)
	player3.play(offset3)
