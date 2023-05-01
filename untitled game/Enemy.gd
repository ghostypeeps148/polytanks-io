extends RigidBody2D


var d = 0
@export var radius = 250
@export var speed = 200
	
func _process(delta):
	d += delta * speed
	
	position = Vector2(
		sin(d) * radius,
		cos(d) * radius
	)
