extends Area2D

func set_ground_speed(speed):
	$GroundSection1.speed = speed
	$GroundSection2.speed = speed
	$GroundSection3.speed = speed


func _on_player_hit():
	$GroundSection1.player_alive = false
	$GroundSection2.player_alive = false
	$GroundSection3.player_alive = false


func restart():
	$GroundSection1.player_alive = true
	$GroundSection2.player_alive = true
	$GroundSection3.player_alive = true
