extends Control


func resume():
	get_tree().paused = false
	$AnimationPlayerl.play_backwards("blur")
	
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	
func Esc():
	if Input.is_action_just_pressed("escape") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("escape") and get_tree().paused == true:
		resume()


func _on_resume_pressed() -> void:
	resume()


func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()


func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")
