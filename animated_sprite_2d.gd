extends AnimatedSprite2D
class_name RedHatMan 
	
@export var speed: float = 200.0

# Reference to the AnimatedSprite2D node
@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	print("RedHatMan is ready!")

func _physics_process(delta: float) -> void:
	var direction = Vector2.ZERO

	# Movement input
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("d"):
		direction.x += 1
		_play_animation("walk_right")
	elif Input.is_action_pressed("ui_left") or Input.is_action_pressed("a"):
		direction.x -= 1
		_play_animation("walk_left")
	else:
		anim.stop() # Stop animation when idle

	

func _play_animation(name: String) -> void:
	if anim.animation != name:
		anim.play(name)
	
	
	
	
	
	

	
	
	
	
	
	
	
	

	
	
	
