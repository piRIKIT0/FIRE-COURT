extends Area2D

signal ball_scored

func _on_area_entered(body):
	if body.name == "Ball":
		emit_signal("ball_scored")
