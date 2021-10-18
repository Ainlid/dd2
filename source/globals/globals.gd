extends Node

const loops = [preload("res://loops/happy1.wav"),
preload("res://loops/happy2.wav"),
preload("res://loops/happy3.wav"),
preload("res://loops/happy4.wav"),
preload("res://loops/sad1.wav"),
preload("res://loops/sad2.wav"),
preload("res://loops/sad3.wav"),
preload("res://loops/sad4.wav"),
preload("res://loops/chill1.wav"),
preload("res://loops/chill2.wav"),
preload("res://loops/chill3.wav"),
preload("res://loops/chill4.wav"),
preload("res://loops/scary1.wav"),
preload("res://loops/scary2.wav"),
preload("res://loops/scary3.wav"),
preload("res://loops/scary4.wav")]

const layouts = [preload("res://layouts/forest.tscn")]

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
preload("res://materials/dirt.tres")]

const textures = [preload("res://textures/blue1.png"),
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
preload("res://textures/violet1.png"),
preload("res://textures/violet2.png"),
preload("res://textures/violet3.png"),
preload("res://textures/violet4.png"),
preload("res://textures/yellow1.png"),
preload("res://textures/yellow2.png"),
preload("res://textures/yellow3.png"),
preload("res://textures/yellow4.png")]

var dream_rng

func _ready():
	randomize()
	dream_rng = RandomNumberGenerator.new()
	dream_rng.randomize()
