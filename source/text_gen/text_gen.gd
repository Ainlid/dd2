extends Node

const articles = ["the", "the", "the", "the", "my", "your", "our", "that", "this", "every", "one", "the only", "his", "her"]

const nouns = ["forest", "city", "place", "plant", "sky", "ground", "mountain", "vehicle", "computer", "man", "woman", "person", "character", "animal", "road", "device", "software", "family", "school", "bed", "mouse", "keyboard", "bicycle", "drink", "outfit", "decoration", "wall", "airport", "bridge", "road", "river", "beach", "sculpture", "instrument", "fruit", "window", "computer", "piece of paper", "photo", "artwork", "space", "task", "goal", "project", "lighthouse", "ocean", "planet", "game", "simulation", "time", "moment", "memory"]

const verbs = ["moves", "moved", "will move", "plays", "responded", "thinks", "is thinking", "waited", "waits", "enjoys", "dislikes", "illuminates", "faded", "transformed", "knows", "works", "calls", "stops", "continues", "speaks", "was speaking", "won", "lost", "creates", "destroyed", "remembered", "forgot", "writes", "allows", "forbids", "opens", "closes", "died", "lives"]

const verbs_copular = ["is", "was", "will be", "might be", "looks", "must be", "remains"]

const adjectives = ["happy", "sad", "moving", "static", "fast", "slow", "unbelievable", "infinite", "surprising", "mysterious", "glowing", "tired", "hard", "soft", "transparent", "long", "short", "excellent", "noisy", "quiet", "rare", "common", "normal", "typical", "living", "clean", "dirty", "fancy", "scary", "helpless", "uncanny", "melodic", "silly", "kind", "brave", "nice", "old", "modern", "young", "sweet", "wet", "dry", "cold", "hot", "heavy", "industrial", "complex", "accurate", "awesome", "shiny", "cool", "fake", "unreal", "intelligent", "smart", "curious", "strange", "unique", "empty", "desaturated", "saturated", "blurry", "sharp", "warped"]

const adverbs = ["accidentally", "actually", "always", "regularly", "rarely", "never", "anxiously", "arrogantly", "awkwardly", "beautifully", "bravely", "quickly", "slowly", "carefully", "sadly", "gladly", "exactly", "orderly", "randomly", "oddly", "hardly", "easily", "before", "later", "soon", "still", "eventually", "recently", "finally"]

const punctuation = [".", ".", ".", ".", "...", "!", "?", "!?", "--"]

func _rand_part(part_array):
	var id = globals.dream_rng.randi()%part_array.size()
	return part_array[id]

func _make_sentence():
	var sentence = ""
	var type_id = globals.dream_rng.randi()%4
	match type_id:
		#NOUN + VERB
		0:
			sentence += _rand_part(articles) + " "
			#optional adjective
			if globals.dream_rng.randf() > 0.5:
				sentence += _rand_part(adjectives) + " "
			sentence += _rand_part(nouns) + " " + _rand_part(verbs)
		#NOUN + VERB + OR NOUN
		1:
			sentence += _rand_part(articles) + " "
			if globals.dream_rng.randf() > 0.5:
				sentence += _rand_part(adjectives) + " "
			sentence += _rand_part(nouns) + " " + _rand_part(verbs) + " " + _rand_part(articles) + " "
			if globals.dream_rng.randf() > 0.5:
				sentence += _rand_part(adjectives) + " "
			sentence += _rand_part(nouns)
		#NOUN + VERB (COPULAR) + ADJECTIVE
		2:
			sentence += _rand_part(articles) + " "
			if globals.dream_rng.randf() > 0.5:
				sentence += _rand_part(adjectives) + " "
			sentence += _rand_part(nouns) + " " + _rand_part(verbs_copular) + " " + _rand_part(adjectives)
		#NOUN + VERB + ADVERB
		3:
			sentence += _rand_part(articles) + " "
			if globals.dream_rng.randf() > 0.5:
				sentence += _rand_part(adjectives) + " "
			sentence += _rand_part(nouns) + " " + _rand_part(verbs) + " " + _rand_part(adverbs)
	sentence += _rand_part(punctuation) + " "
	return sentence

func _make_text(sentence_amount):
	var text = ""
	for n in sentence_amount:
		text += _make_sentence()
	return text
