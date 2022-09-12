extends KinematicBody2D


var velocity = Vector2()
export var speed = 120


func get_input():
	if(Input.is_action_pressed("Player1 - down")):
		velocity.y += speed
	elif (Input.is_action_pressed("Player1 - up ")):
		velocity.y -= speed
	else:
		velocity.y = 0
	
		
func _physics_process(delta):
	get_input()
	move_and_slide(velocity * speed *  delta)
	
	


# Lessions learend
#you can shape a the collisson shape to the sprite 
# setting velocity to zero does not work 
# setting velocity.x/y to zero prevents from unwanted acceleration 
