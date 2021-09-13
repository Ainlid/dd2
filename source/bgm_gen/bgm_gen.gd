extends Node

onready var player = $player

onready var timer =$timer
var tempo = 120.0

var samples = []

var note_scale = []
var transposition = 0.0

var seq_sample = []
var seq_note = []
var current_note = 0

func _ready():
	_bgm_start()

func _bgm_start():
	_pick_samples()
	_pick_scale()
	_sequence()
	tempo = globals.dream_rng.randf_range(100.0, 180.0)
	timer.wait_time = 60.0/tempo
	timer.start()

func _pick_samples():
	for n in 8:
		var id = globals.dream_rng.randi()%globals.samples.size()
		samples.append(globals.samples[id])

func _sequence():
	for n_s in 16:
		if n_s%4 == 1:
			seq_sample.append(0)
		else:
			seq_sample.append(globals.dream_rng.randi()%samples.size())
	var base_note = globals.dream_rng.randi()%note_scale.size()
	for n_n in 16:
		if n_n%4 == 1:
			seq_note.append(base_note)
		else:
			var id = globals.dream_rng.randi()%note_scale.size()
			seq_note.append(note_scale[id])

func _pick_scale():
	if globals.dream_rng.randf() > 0.5:
		#major scale
		note_scale = [0, 2, 4, 5, 7, 9, 11]
	else:
		#minor scale
		note_scale = [0, 2, 3, 5, 7, 8, 10]
	transposition = globals.dream_rng.randi_range(0, 11)

func _note_to_pitch(note_value):
	return pow(2.0, note_value/12.0)

func _timeout():
	player.stop()
	var sample_id = seq_sample[current_note]
	player.stream = samples[sample_id]
	player.pitch_scale = _note_to_pitch(seq_note[current_note] + transposition)
	player.play()
	#loop
	if current_note < 15:
		current_note += 1
	else:
		current_note = 0
