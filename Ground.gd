extends Area2D

var speed = 2

func _process(delta):
	position.x -= speed
	if position.x <= -168:
		position.x = 168
