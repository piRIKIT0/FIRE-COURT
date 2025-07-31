extends RigidBody2D

var start_position: Vector2
var shot_force := 800.0
var is_shot := false

func _ready():
	start_position = global_position
	sleeping = true

func shoot(target: Vector2):
	is_shot = true
	sleeping = false
	global_position = start_position
	linear_velocity = Vector2.ZERO
	apply_impulse(Vector2.ZERO, (target - global_position).normalized() * shot_force)

func reset_ball():
	global_position = start_position
	linear_velocity = Vector2.ZERO
	sleeping = true
	is_shot = false
