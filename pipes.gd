extends Node2D

var speed = 0
var rng = RandomNumberGenerator.new()

func _ready():
	position.y += rng.randf_range(-140.0, 140.0)
	$DespawnTimer.start()

func _process(delta):
	position.x += speed

func set_speed(new_speed):
	speed = new_speed

func restart():
	queue_free()

func _on_despawn_timer_timeout():
	queue_free()

func game_over():
	$DespawnTimer.stop()
	speed = 0
