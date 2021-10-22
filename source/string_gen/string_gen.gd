extends Node

var characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'

func _rand_string(length):
	var rand_string: String
	var n_char = len(characters)
	for i in range(length):
		rand_string += characters[randi()%n_char]
	return rand_string
