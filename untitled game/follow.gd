extends Camera2D

@onready var node_to_follow = get_node("../Player")

func _process(_delta):
	position = node_to_follow.position
