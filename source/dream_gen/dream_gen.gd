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
		current_mat.uv1_scale.x = globals.dream_rng.randf_range(0.1, 0.5)
		current_mat.uv1_scale.y = globals.dream_rng.randf_range(0.1, 0.5)

func _set_env():
	var env = world_env.environment
	var bg_hue = globals.dream_rng.randf()
	var bg_sat = globals.dream_rng.randf_range(0.0, 0.7)
	var bg_val = 0.0
	if globals.dream_rng.randf() > 0.5:
		bg_val = globals.dream_rng.randf_range(0.7, 0.9)
	else:
		bg_val = globals.dream_rng.randf_range(0.1, 0.3)
	var bg_col = Color.from_hsv(bg_hue, bg_sat, bg_val)
	var amb_col = Color.from_hsv(bg_hue, bg_sat, 0.5)
	env.background_color = bg_col
	env.fog_color = bg_col
	env.ambient_light_color = amb_col

func _set_sun():
	sun.rotation.x = globals.dream_rng.randf_range(-PI / 2.0, 0.0)
	sun.rotation.y = globals.dream_rng.randf_range(0.0, PI * 2.0)
	sun.light_color = Color.from_hsv(globals.dream_rng.randf(), globals.dream_rng.randf(), 1.0)

func _spawn_layout():
	var id = globals.dream_rng.randi()%globals.layouts.size()
	var new_layout = globals.layouts[id].instance()
	add_child(new_layout)
