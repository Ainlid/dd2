extends Node

const loops = [preload("res://loops/piano1.wav"),
preload("res://loops/piano2.wav"),
preload("res://loops/piano3.wav"),
preload("res://loops/piano4.wav"),
preload("res://loops/piano5.wav"),
preload("res://loops/piano6.wav"),
preload("res://loops/piano7.wav"),
preload("res://loops/piano8.wav"),
preload("res://loops/synth1.wav"),
preload("res://loops/synth2.wav"),
preload("res://loops/synth3.wav"),
preload("res://loops/synth4.wav"),
preload("res://loops/synth5.wav"),
preload("res://loops/synth6.wav"),
preload("res://loops/synth7.wav"),
preload("res://loops/synth8.wav")]

const tiles = [preload("res://dream_gen/tiles/flat.tscn"),
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

const textures = [preload("res://textures/nature1.png"),
preload("res://textures/nature2.png"),
preload("res://textures/nature3.png"),
preload("res://textures/nature4.png"),
preload("res://textures/nature5.png"),
preload("res://textures/nature6.png"),
preload("res://textures/nature7.png"),
preload("res://textures/nature8.png")]

var dream_rng

func _ready():
	randomize()
	dream_rng = RandomNumberGenerator.new()
	dream_rng.randomize()
