extends Node2D

var grav_scale = .3
var y_velocity = 0
var speed = 0
var jump_height = -6

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	y_velocity += grav_scale
	y_velocity = clamp(y_velocity, -6, 9)
	position.y += y_velocity
	
	if Input.is_action_just_pressed("Jump"):
		y_velocity = jump_height
