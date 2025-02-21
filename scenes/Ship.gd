extends RigidBody2D

const THRUST = 500.0 
const ROTATION_TORQUE = 100.0  

func _ready():
	inertia = 100

func _process(delta):
	if Input.is_action_pressed("move_up"):
		var thrust_force = Vector2(0, -THRUST).rotated(rotation)
		apply_force(thrust_force)

	if Input.is_action_pressed("move_left"):
		apply_torque(-ROTATION_TORQUE)
	if Input.is_action_pressed("move_right"):
		apply_torque(ROTATION_TORQUE)
