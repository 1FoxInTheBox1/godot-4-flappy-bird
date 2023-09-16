extends Sprite2D

var speed = 0
var player_alive = true

func _process(delta):
	if player_alive:
		if position.x < -168:
			position.x = 816	
		position.x += speed
