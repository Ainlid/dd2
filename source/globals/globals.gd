extends Node

const loops = [preload("res://loops/happy1.mp3"),
preload("res://loops/happy2.mp3"),
preload("res://loops/happy3.mp3"),
preload("res://loops/happy4.mp3"),
preload("res://loops/happy5.mp3"),
preload("res://loops/happy6.mp3"),
preload("res://loops/happy7.mp3"),
preload("res://loops/happy8.mp3"),
preload("res://loops/sad1.mp3"),
preload("res://loops/sad2.mp3"),
preload("res://loops/sad3.mp3"),
preload("res://loops/sad4.mp3"),
preload("res://loops/sad5.mp3"),
preload("res://loops/sad6.mp3"),
preload("res://loops/sad7.mp3"),
preload("res://loops/sad8.mp3"),
preload("res://loops/chill1.mp3"),
preload("res://loops/chill2.mp3"),
preload("res://loops/chill3.mp3"),
preload("res://loops/chill4.mp3"),
preload("res://loops/chill5.mp3"),
preload("res://loops/chill6.mp3"),
preload("res://loops/chill7.mp3"),
preload("res://loops/chill8.mp3"),
preload("res://loops/scary1.mp3"),
preload("res://loops/scary2.mp3"),
preload("res://loops/scary3.mp3"),
preload("res://loops/scary4.mp3"),
preload("res://loops/scary5.mp3"),
preload("res://loops/scary6.mp3"),
preload("res://loops/scary7.mp3"),
preload("res://loops/scary8.mp3")]

const layouts = [preload("res://layouts/forest.tscn"),
preload("res://layouts/street.tscn"),
preload("res://layouts/stairs.tscn")]

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
preload("res://materials/energy.tres")]

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
