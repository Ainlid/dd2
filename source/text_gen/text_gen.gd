extends Node

const nouns = ["the time", "a person", "a year", "a month", "a day", "a thing", "a man", "the world", "life", "a hand", "a part", "a child", "an eye", "a woman", "a place", "the work", "a week", "a case", "a point", "a number", "a group", "a problem", "a fact"]

const verbs = ["has", "does", "says", "goes", "gets", "makes", "knows", "thinks", "takes", "sees", "comes", "wants"]

const adjectives = ["good", "new", "the first", "the last", "long", "great", "little", "own", "other", "old", "right", "big"]

const adverbs = ["accidentally", "actually", "always", "regularly", "rarely", "never", "anxiously", "arrogantly", "awkwardly", "beautifully", "bravely", "quickly", "slowly", "carefully", "sadly", "gladly", "exactly", "orderly", "randomly", "oddly", "hardly", "easily", "before", "later", "soon", "still", "eventually", "recently", "finally"]

func _ready():
	print(_make_text(4))

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

func _make_sentence():
	var sentence = ""
	var type_id = globals.dream_rng.randi()%4
	match type_id:
		#SUBJECT + VERB
		0:
			sentence = _rand_noun() + " " + _rand_verb() + ". "
		#SUBJECT + VERB + OBJECT (OR NOUN)
		1:
			sentence = _rand_noun() + " " + _rand_verb() + " " + _rand_noun() + ". "
		#SUBJECT + IS + ADJECTIVE
		2:
			sentence = _rand_noun() + " is " + _rand_adj() + ". "
		#SUBJECT + VERB + ADVERB
		3:
			sentence = _rand_noun() + " " + _rand_verb() + " " + _rand_adv() + ". "
	return sentence

func _make_text(sentence_amount):
	var text = ""
	for n in sentence_amount:
		text += _make_sentence()
	return text
