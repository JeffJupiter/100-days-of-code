extends KinematicBody2D



var speed = 300
var velocity = Vector2.LEFT * speed
var ball = "."
var start_position = Vector2(29,-91)
var player_1_score = 0 
var player_2_score = 0 


#var launch_range = [Vector2(100,200), Vector2(200,100), Vector2(50,100), Vector2 (400,200)]
var gravity = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	#rand_range(launch_range,launch_range)
	
func _process(delta):
	pass



	
func player_1_wins():
	if(player_2_score >= 5):
		print("Player 1 wins!!!!")

func player_2_wins():
	if(player_2_score >= 5):
		print("Player 2 wins!!!!")



func _physics_process(delta):
	#variable created to get information about the collison 
	#move and collide takes a Vector2 and we * delta 
	#to have the Vector information updated each frame 
	var collison_info = move_and_collide(velocity * delta)
	if collison_info:
		#The position changes based off the collison info
		# Once you get collison point bounce at 90 degrees
		velocity = velocity.bounce(collison_info.normal)
	velocity.y += gravity * delta
	







func _on_Player1_Goal_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Ball":
		get_node(".").set_position(start_position)
		player_2_score +=1
		print(player_2_score)
		
