extends Node

export var delete_chance = 0.5

func _ready():
	if globals.dream_rng.randf() < delete_chance:
		queue_free()
