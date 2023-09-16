extends Sprite2D

signal restart

func _ready():
	hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("Jump") && is_visible():
		restart.emit()
		hide()


func _on_player_hit():
	show()
