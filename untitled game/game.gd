extends Node

@onready var Player = $Player
@onready var Lasers = $Lasers

func _ready():
	Player.connect("laser_shot", _on_player_laser_shot)
func _on_player_laser_shot(laser):
	Lasers.add_child(laser)
