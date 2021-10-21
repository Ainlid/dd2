extends Node

const articles = ["the", "the", "the", "the", "my", "your", "our", "that", "this", "every", "one", "the only", "his", "her"]

const nouns = ["forest", "city", "place", "plant", "sky", "ground", "mountain", "vehicle", "computer", "man", "woman", "person", "animal", "road", "device", "software", "family", "school", "bed", "mouse", "keyboard", "bicycle", "drink", "outfit", "decoration", "wall", "airport", "bridge", "road", "river", "beach", "sculpture", "instrument", "fruit", "window", "computer", "piece of paper", "photo", "artwork", "space", "task", "goal", "project", "lighthouse", "ocean", "planet", "game", "simulation"]

const verbs = ["is", "was", "will be", "might be", "was never", "moves", "moved", "will move", "plays", "responded", "thinks", "is thinking", "waited", "waits", "enjoys", "hates", "illuminates", "faded", "transformed", "knows", "is working", "is calling", "stops", "continues", "speaks", "was speaking", "won", "lost", "is building", "destroyed", "is considering"]

const adjectives = ["happy", "sad", "moving", "static", "fast", "slow", "unbelievable", "infinte", "surprising", "mysterious", "glowing", "tired", "hard", "soft", "transparent", "long", "short", "excellent", "noisy", "silent", "rare", "common", "normal", "typical", "living", "clean", "dirty", "fancy", "scary", "helpless", "uncanny", "melodic", "silly", "kind", "brave", "nice", "old", "modern", "young", "sweet", "wet", "dry", "cold", "hot", "heavy", "industrial", "complex", "accurate", "awesome", "shiny", "cool", "fake", "unreal", "intelligent", "smart", "curious", "strange", "unique", "empty", "desaturated", "saturated", "blurry", "sharp", "warped"]

const adverbs = ["accidentally", "actually", "always", "regularly", "rarely", "never", "anxiously", "arrogantly", "awkwardly", "beautifully", "bravely", "quickly", "slowly", "carefully", "sadly", "gladly", "exactly", "orderly", "randomly", "oddly", "hardly", "easily", "before", "later", "soon", "still", "eventually", "recently", "finally"]

const punctuation = [".", ".", ".", "...", "!", "?", "!?", "--"]

func _ready():
	print(_make_text(4))

func _rand_art():
	var id = globals.dream_rng.randi()%articles.size()
	return articles[id]

func _rand_noun():
	var id = globals.dream_rng.randi()%nouns.size()
	return nouns[id]

func _rand_verb():
	var id = globals.dream_rng.randi()%verbs.size()
	return verbs[id]

func _rand_adj():
	var id = globals.dream_rng.randi()%adjectives.size()
	return adjectives[id]

func _rand_adv():
	var id = globals.dream_rng.randi()%adverbs.size()
	return adverbs[id]

func _rand_punct():
	var id = globals.dream_rng.randi()%punctuation.size()
	return punctuation[id]

func _make_sentence():
	var sentence = ""
	var type_id = globals.dream_rng.randi()%4
	match type_id:
		#SUBJECT + VERB
		0:
			sentence += _rand_art() + " " + _rand_noun() + " " + _rand_verb()
		#SUBJECT + VERB + OBJECT (OR NOUN)
		1:
			sentence += _rand_art() + " " + _rand_noun() + " " + _rand_verb() + " " + _rand_art() + " " + _rand_noun()
		#SUBJECT + VERB + ADJECTIVE
		2:
			sentence += _rand_art() + " " + _rand_noun() + " " + _rand_verb() + " " + _rand_adj()
		#SUBJECT + VERB + ADVERB
		3:
			sentence += _rand_art() + " " + _rand_noun() + " " + _rand_verb() + " " + _rand_adv()
	sentence += _rand_punct() + " "
	return sentence

func _make_text(sentence_amount):
	var text = ""
	for n in sentence_amount:
		text += _make_sentence()
	return text
