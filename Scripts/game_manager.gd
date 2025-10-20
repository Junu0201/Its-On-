extends Node

var score = 0

func add_point(): 
	score += 1
	print(score)

@onready var pause_menu: Control = $PauseMenu
var paused = false

func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		PauseMenu()
		
func PauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
