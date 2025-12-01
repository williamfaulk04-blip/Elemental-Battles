extends Button


# Called when the node enters the scene tree for the first time.
@onready var button: Button = $"."
func _pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")
