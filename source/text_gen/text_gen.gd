extends Node

const sample = "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stal"

func _ready():
	print(_make_text(3, 20))

func _make_text(parts_amount, max_length):
	var text = ""
	for n in parts_amount:
		var start_point = globals.dream_rng.randi()%(sample.length() - 1)
		var remaining_length = sample.length() - start_point
		var text_length = min(globals.dream_rng.randi()%max_length, sample.length() - remaining_length)
		text += sample.substr(start_point, text_length)
	return text
