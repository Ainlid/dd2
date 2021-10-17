extends Spatial

onready var player = preload("res://player/player.tscn")

export var points = []
var coords = []

func _ready():
	for n in points.size():
		var point_node = get_node(points[n])
		coords.append(point_node.translation)
	var new_player = player.instance()
	add_child(new_player)
	var point_id = globals.dream_rng.randi()%points.size()
	new_player.translation = coords[point_id]
	new_player.rotation.y = globals.dream_rng.randf_range(0.0, PI * 2.0)
