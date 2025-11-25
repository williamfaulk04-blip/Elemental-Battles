extends Control


func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	
func _input(event):
		if Input.is_action_just_pressed("escape"):
			testEsc()
	
func testEsc():
		if !get_tree().paused:
			pause() 
			print("pause")
		


func _on_button_pressed():
	resume()


func _on_button_2_pressed():
	resume()
	get_tree().reload_current_scene()
	

func _on_button_3_pressed():
	resume()
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")
	
