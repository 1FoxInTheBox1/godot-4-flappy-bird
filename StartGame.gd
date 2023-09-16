extends Sprite2D

signal start_game

func _process(delta):
	if Input.is_action_just_pressed("Jump") && is_visible():
		start_game.emit()
		hide()


func restart():
	show()
