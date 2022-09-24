extends CanvasLayer


var player1_score = 4
var player2_score = 4 



func _process(delta):
	pass


#



		
		
		
		


func _on_Player1_Goal_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Ball":
		player2_score += 1
		$"Player Score".text = str(player2_score)
	#elif player2_score > 4
	


func _on_Player2_Goal_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Ball":
		player1_score += 1
		$"Player Score2".text = str(player1_score)
		
		

