extends Node

const loops = [preload("res://loops/arpeggio1.wav"),
preload("res://loops/arpeggio2.wav"),
preload("res://loops/arpeggio3.wav"),
preload("res://loops/arpeggio4.wav"),
preload("res://loops/arpeggio5.wav"),
preload("res://loops/arpeggio6.wav"),
preload("res://loops/drum1.wav")]

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

const textures = [preload("res://textures/field.png"),
preload("res://textures/city.png"),
preload("res://textures/bridge.png")]

var dream_rng

func _ready():
	randomize()
	dream_rng = RandomNumberGenerator.new()
	dream_rng.randomize()
