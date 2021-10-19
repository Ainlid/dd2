extends Node

const articles = ["the", "the", "the", "the", "my", "your", "our", "that", "this", "every", "one", "the only", "his", "her"]

const nouns = ["forest", "city", "place", "plant", "sky", "ground", "mountain", "vehicle", "computer", "man", "woman", "person", "animal", "road", "device", "software", "family", "school", "bed", "mouse", "keyboard", "bicycle", "drink", "outfit", "decoration", "wall", "airport", "bridge", "road", "river", "beach", "sculpture", "instrument", "fruit", "window", "computer", "piece of paper", "photo", "artwork", "space", "task", "goal", "project", "lighthouse", "ocean", "planet"]

const prepositions = ["under", "in front of", "on top of", "above", "behind", "near", "following", "inside", "outside", "besides", "unlike", "like", "beneath", "against", "into", "beyond", "considering", "without", "with", "towards"]

const verbs = ["is", "was", "will be", "might be", "was never", "moves", "moved", "will move", "plays", "responded", "thinks", "is thinking", "waited", "waits", "enjoys", "hates", "illuminates", "faded", "transformed", "knows", "is working", "is calling", "stops", "continues", "speaks", "was speaking", "won", "lost", "is building", "destroyed", "is considering"]

const adjectives = ["happy", "sad", "moving", "static", "fast", "slow", "unbelievable", "infinte", "surprising", "mysterious", "glowing", "tired", "hard", "soft", "transparent", "long", "short", "excellent", "noisy", "silent", "rare", "common", "normal", "typical", "living", "clean", "dirty", "fancy", "scary", "helpless", "uncanny", "melodic", "silly", "kind", "brave", "nice", "old", "modern", "young", "sweet", "wet", "dry", "cold", "hot", "heavy", "industrial", "complex", "accurate", "awesome", "shiny", "cool", "fake", "unreal", "intelligent", "smart", "curious", "strange", "unique", "empty", "desaturated", "saturated", "blurry", "sharp", "warped"]

const punctuation = [".", ".", ".", "...", "!", "?"]

func _ready():
	print(_make_sentence())

func _rand_art():
	var id = globals.dream_rng.randi()%articles.size()
	return articles[id]

func _rand_noun():
	var id = globals.dream_rng.randi()%nouns.size()
	return nouns[id]

func _rand_prep():
	var id = globals.dream_rng.randi()%prepositions.size()
	return prepositions[id]

func _rand_verb():
	var id = globals.dream_rng.randi()%verbs.size()
	return verbs[id]

func _rand_adj():
	var id = globals.dream_rng.randi()%adjectives.size()
	return adjectives[id]

func _rand_punct():
	var id = globals.dream_rng.randi()%punctuation.size()
	return punctuation[id]

func _make_sentence():
	var sentence = ""
	sentence += _rand_art() + " "
	if globals.dream_rng.randf() > 0.5:
		sentence += _rand_adj() + " "
	sentence +=  _rand_noun() + " " + _rand_verb() + " " + _rand_prep() + " " + _rand_art() + " "
	if globals.dream_rng.randf() > 0.5:
		sentence += _rand_adj() + " "
	sentence +=  _rand_noun() + _rand_punct()
	return sentence
