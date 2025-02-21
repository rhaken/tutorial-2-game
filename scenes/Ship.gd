extends RigidBody2D

const THRUST = 500.0 
const ROTATION_TORQUE = 1.0  
const INERTIA_DELAY = 0.2

var inertia_target = 100
var inertia_timer = 0.0

func _process(delta):
	if Input.is_action_pressed("move_up"):
		if inertia_target != 1:
			inertia_target = 1
			inertia_timer = INERTIA_DELAY
		var thrust_force = Vector2(0, -THRUST).rotated(rotation)
		apply_force(thrust_force)
	else:
		if inertia_target != 100:
			inertia_target = 100
			inertia_timer = INERTIA_DELAY

	if inertia_timer > 0:
		inertia_timer -= delta
		if inertia_timer <= 0:
			inertia = inertia_target

	if Input.is_action_pressed("move_left"):
		apply_torque(-ROTATION_TORQUE)
	if Input.is_action_pressed("move_right"):
		apply_torque(ROTATION_TORQUE)
