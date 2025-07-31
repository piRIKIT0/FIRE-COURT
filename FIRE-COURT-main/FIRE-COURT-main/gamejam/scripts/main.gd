extends Node2D

@onready var ball = $Ball
@onready var hand_marker = $HandMarker
@onready var score_label = $ScoreLabel
var score := 0

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
		var mouse_pos = get_global_mouse_position()
		ball.shoot(mouse_pos)

func _on_ball_timeout():
	ball.reset_ball()

func _on_hoop_ball_scored():
	score += 1
	score_label.text = "Score: %d" % score
