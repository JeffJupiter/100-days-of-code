extends KinematicBody2D


var velocity = Vector2()
export var speed = 120


func get_input():
	if(Input.is_action_pressed("ui_down")):
		velocity.y += speed
	elif(Input.is_action_pressed("ui_up")):
		velocity.y -= speed
	else:
		velocity.y = 0
		
func _physics_process(delta):
	get_input()
	move_and_slide(velocity)
#
