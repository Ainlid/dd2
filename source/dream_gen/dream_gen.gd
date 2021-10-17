extends Spatial

onready var world_env = $world_env
onready var sun = $sun

func _ready():
	_generate()

func _generate():
	_set_env()
	_set_sun()
	_randomize_mats()
	_spawn_layout()

func _randomize_mats():
	for n in globals.materials.size():
		var current_mat = globals.materials[n]
		var tex_id = globals.dream_rng.randi()%globals.textures.size()
		current_mat.albedo_texture = globals.textures[tex_id]
		current_mat.uv1_offset.x = globals.dream_rng.randf_range(0.0, 1.0)
		current_mat.uv1_offset.y = globals.dream_rng.randf_range(0.0, 1.0)
		current_mat.uv1_scale.x = globals.dream_rng.randf_range(0.1, 2.0)
		current_mat.uv1_scale.y = globals.dream_rng.randf_range(0.1, 2.0)

func _set_env():
	var env = world_env.environment
	var fog_color = Color.from_hsv(globals.dream_rng.randf(), globals.dream_rng.randf_range(0.0, 0.7), globals.dream_rng.randf_range(0.2, 0.8))
	env.background_color = fog_color
	env.fog_color = fog_color
	env.ambient_light_color = fog_color
	env.ambient_light_energy = 0.5

func _set_sun():
	sun.rotation.x = globals.dream_rng.randf_range(-PI / 2.0, 0.0)
	sun.rotation.y = globals.dream_rng.randf_range(0.0, PI * 2.0)
	sun.light_color = Color.from_hsv(globals.dream_rng.randf(), globals.dream_rng.randf(), 1.0)

func _spawn_layout():
	var id = globals.dream_rng.randi()%globals.layouts.size()
	var new_layout = globals.layouts[id].instance()
	add_child(new_layout)
