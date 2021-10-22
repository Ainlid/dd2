extends Spatial

onready var text_gen = $text_gen

var message = ""

onready var label = $label

func _ready():
	_get_message()
	_pick_model()
	label.hide()

func _get_message():
	var sentence_amount = globals.dream_rng.randi_range(1, 4)
	message = text_gen._make_text(sentence_amount)
	label.text = message

func _pick_model():
	var id = globals.dream_rng.randi()%globals.npc_models.size()
	var new_model = globals.npc_models[id].instance()
	add_child(new_model)

func _body_entered(body):
	if body.is_in_group("player"):
		_show_message()

func _body_exited(body):
	if body.is_in_group("player"):
		_hide_message()

func _show_message():
	label.show()

func _hide_message():
	label.hide()
