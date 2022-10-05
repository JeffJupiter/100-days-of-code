extends CanvasLayer


var player1_score = 0
var player2_score = 0 

func _process(delta):
	to_game_over_screen()
	
	


func _on_Player1_Goal_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Ball":
		player2_score += 1
		$"Player Score".text = str(player2_score)

func _on_Player2_Goal_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Ball":
		player1_score += 1
		$"Player Score2".text = str(player1_score)



	
func to_game_over_screen():
	if player1_score == 5:
		get_tree().change_scene("res://Scenes/Game Over P1.tscn")
	elif player2_score == 5:
		get_tree().change_scene("res://Scenes/Game Over P2.tscn")
