extends Node2D

var speed = -2
var score = 0
var pipeScene = preload("res://pipes.tscn")

func get_speed():
	return speed

func _ready():
	$PipeSpawnTimer.start()
	$Ground.speed = speed

func _on_pipe_spawn_timer_timeout():
	var instance = pipeScene.instantiate()
	$Player.hit.connect(instance.game_over.bind())
	instance.set_speed(speed)
	instance.position.y = 200
	instance.position.x += 400
	add_child(instance)

func game_over():
	$PipeSpawnTimer.stop()
	


func _on_player_yippee():
	score += 1
