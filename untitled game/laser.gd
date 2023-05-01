extends Area2D
var mv := Vector2(1,0)
@export var speed := 500.0
@onready var timer = $Timer

func _physics_process(delta):

	global_position += mv.rotated(rotation) * speed * delta

	



func _on_timer_timeout():
	print("im dead :(")
	queue_free()
