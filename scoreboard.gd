extends Node2D

var first_digit = 0
var second_digit = 0

func _ready():
	hide()

func update_score():
	first_digit += 1
	
	if first_digit >= 10:
		first_digit = 0
		second_digit += 1

	$Ones.set_frame_and_progress(first_digit, 0.0)
	$Tens.set_frame_and_progress(second_digit, 0.0)

func start_game():
	show()
	
func restart():
	hide()
	
