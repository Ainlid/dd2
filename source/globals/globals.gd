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

const layouts = [preload("res://layouts/forest.tscn"),
preload("res://layouts/street.tscn"),
preload("res://layouts/stairs.tscn"),
preload("res://layouts/bridge.tscn")]

var materials = [preload("res://materials/brick.tres"),
preload("res://materials/concrete.tres"),
preload("res://materials/glass.tres"),
preload("res://materials/leaves.tres"),
preload("res://materials/metal.tres"),
preload("res://materials/rubber.tres"),
preload("res://materials/trunk.tres"),
preload("res://materials/grass.tres"),
preload("res://materials/stone.tres"),
preload("res://materials/fabric.tres"),
preload("res://materials/dirt.tres"),
preload("res://materials/asphalt.tres"),
preload("res://materials/paint.tres"),
preload("res://materials/skin.tres"),
preload("res://materials/bone.tres"),
preload("res://materials/energy.tres"),
preload("res://materials/water.tres")]

const textures = [preload("res://textures/black1.png"),
preload("res://textures/black2.png"),
preload("res://textures/black3.png"),
preload("res://textures/black4.png"),
preload("res://textures/blue1.png"),
preload("res://textures/blue2.png"),
preload("res://textures/blue3.png"),
preload("res://textures/blue4.png"),
preload("res://textures/cyan1.png"),
preload("res://textures/cyan2.png"),
preload("res://textures/cyan3.png"),
preload("res://textures/cyan4.png"),
preload("res://textures/green1.png"),
preload("res://textures/green2.png"),
preload("res://textures/green3.png"),
preload("res://textures/green4.png"),
preload("res://textures/magenta1.png"),
preload("res://textures/magenta2.png"),
preload("res://textures/magenta3.png"),
preload("res://textures/magenta4.png"),
preload("res://textures/orange1.png"),
preload("res://textures/orange2.png"),
preload("res://textures/orange3.png"),
preload("res://textures/orange4.png"),
preload("res://textures/red1.png"),
preload("res://textures/red2.png"),
preload("res://textures/red3.png"),
preload("res://textures/red4.png"),
preload("res://textures/white1.png"),
preload("res://textures/white2.png"),
preload("res://textures/white3.png"),
preload("res://textures/white4.png"),
preload("res://textures/violet1.png"),
preload("res://textures/violet2.png"),
preload("res://textures/violet3.png"),
preload("res://textures/violet4.png"),
preload("res://textures/yellow1.png"),
preload("res://textures/yellow2.png"),
preload("res://textures/yellow3.png"),
preload("res://textures/yellow4.png")]

const npc_models = [preload("res://npc/models/human.tscn"),
preload("res://npc/models/human_small.tscn"),
preload("res://npc/models/skeleton.tscn"),
preload("res://npc/models/ghost.tscn")]

var dream_rng

var seed_string = "godot"

onready var string_gen = $string_gen

func _ready():
	randomize()
	dream_rng = RandomNumberGenerator.new()
	_randomize_rng()

func _randomize_rng():
	seed_string = string_gen._rand_string(20)
	dream_rng.seed = hash(seed_string)

func _reseed_rng(new_seed):
	seed_string = new_seed
	dream_rng.seed = hash(seed_string)
