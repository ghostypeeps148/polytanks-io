extends CharacterBody2D
signal laser_shot(laser)

@export var speed = 100.0
@export var friction = 0.9 # 0.99 turns this game into ice physics, hehe - but 1.1...
var vel = Vector2.ZERO

@onready var currentshotpoint = $ShotPoint
@onready var timer = $Reload
var laser_sc = preload("res://laser.tscn")

func _process(_delta):
	if Input.is_action_pressed("shoot"):
		if timer.time_left == 0:
			shoot_laser()
			timer.start()
			
		
		
	
func _physics_process(delta):
	if Input.is_action_pressed("move_r"):
		vel.x = speed
	if Input.is_action_pressed("move_l"):
		vel.x = -speed
	if Input.is_action_pressed("move_d"):
		vel.y = speed
	if Input.is_action_pressed("move_u"):
		vel.y = -speed
	vel *= friction
	position += vel * delta
	look_at(get_global_mouse_position())
	
func shoot_laser():
	var l = laser_sc.instantiate()
	l.global_position = currentshotpoint.global_position
	l.rotation = rotation 
	emit_signal("laser_shot", l)




