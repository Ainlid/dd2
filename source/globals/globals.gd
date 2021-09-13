extends Node

const samples = [preload("res://bgm_gen/samples/piano.wav"),
preload("res://bgm_gen/samples/piano_electro.wav"),
preload("res://bgm_gen/samples/honky_tonk.wav"),
preload("res://bgm_gen/samples/piano_electric.wav"),
preload("res://bgm_gen/samples/piano_electric2.wav"),
preload("res://bgm_gen/samples/celesta.wav"),
preload("res://bgm_gen/samples/glockenspiel.wav"),
preload("res://bgm_gen/samples/music_box.wav"),
preload("res://bgm_gen/samples/vibraphone.wav"),
preload("res://bgm_gen/samples/marimba.wav"),
preload("res://bgm_gen/samples/xylophone.wav"),
preload("res://bgm_gen/samples/dulcimer.wav"),
preload("res://bgm_gen/samples/drawbar_organ.wav"),
preload("res://bgm_gen/samples/percussive_organ.wav"),
preload("res://bgm_gen/samples/rock_organ.wav"),
preload("res://bgm_gen/samples/nylon_guitar.wav"),
preload("res://bgm_gen/samples/steel_guitar.wav"),
preload("res://bgm_gen/samples/clean_guitar.wav"),
preload("res://bgm_gen/samples/muted_guitar.wav"),
preload("res://bgm_gen/samples/acoustic_bass.wav"),
preload("res://bgm_gen/samples/finger_bass.wav"),
preload("res://bgm_gen/samples/picked_bass.wav"),
preload("res://bgm_gen/samples/slap_bass.wav"),
preload("res://bgm_gen/samples/pizzicato_strings.wav"),
preload("res://bgm_gen/samples/harp.wav"),
preload("res://bgm_gen/samples/choir_oohs.wav"),
preload("res://bgm_gen/samples/oboe.wav"),
preload("res://bgm_gen/samples/clarinet.wav"),
preload("res://bgm_gen/samples/flute.wav"),
preload("res://bgm_gen/samples/recorder.wav"),
preload("res://bgm_gen/samples/pan_flute.wav"),
preload("res://bgm_gen/samples/new_age.wav"),
preload("res://bgm_gen/samples/sweep_pad.wav"),
preload("res://bgm_gen/samples/koto.wav"),
preload("res://bgm_gen/samples/kalimba.wav")]

var tiles = [preload("res://dream_gen/tiles/flat.tscn"),
preload("res://dream_gen/tiles/bridge1.tscn"),
preload("res://dream_gen/tiles/street1.tscn")]

var materials = [preload("res://materials/bridge1.tres"),
preload("res://materials/bridge2.tres"),
preload("res://materials/car1.tres"),
preload("res://materials/car2.tres"),
preload("res://materials/car3.tres"),
preload("res://materials/floor.tres"),
preload("res://materials/house1.tres"),
preload("res://materials/house2.tres"),
preload("res://materials/house3.tres"),
preload("res://materials/street_lamp1.tres"),
preload("res://materials/street_lamp2.tres"),
preload("res://materials/tile.tres"),
preload("res://materials/tree1.tres"),
preload("res://materials/tree2.tres")]

var dream_rng

func _ready():
	dream_rng = RandomNumberGenerator.new()
	dream_rng.randomize()
