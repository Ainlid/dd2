extends Spatial

onready var npc = preload("res://npc/npc.tscn")

export var spawn_chance = 0.5

func _ready():
	if globals.dream_rng.randf() < spawn_chance:
		var new_npc = npc.instance()
		add_child(new_npc)
		new_npc.rotation.y = globals.dream_rng.randf_range(0.0, PI * 2.0)
