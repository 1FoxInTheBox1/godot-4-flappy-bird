extends Node2D

signal hit
signal yippee

var grav_scale = .2
var y_velocity = 0
var speed = 0
var jump_height = -5
var alive = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	y_velocity += grav_scale
	y_velocity = clamp(y_velocity, -4, 6)
	position.y += y_velocity
	position.y = clamp(position.y, -20, 388)
	
	if Input.is_action_just_pressed("Jump") && alive:
		$AnimatedSprite2D.play("flap")
		y_velocity = jump_height

func _on_area_entered(area):
	if area.is_in_group("Death"):
		alive = false
		hit.emit()
		$CollisionShape2D.set_deferred("disabled", true)
	else:
		yippee.emit()


func _on_animated_sprite_2d_animation_looped():
	$AnimatedSprite2D.pause()
