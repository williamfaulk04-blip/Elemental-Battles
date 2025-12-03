extends Area2D
@onready var sfx_coin: AudioStreamPlayer2D = $SFX_coin
@onready var coin = $"."




func _on_body_entered(_body: Node2D) -> void:
	sfx_coin.play()
	coin.visible = false
	print("+1 coin!")
	await sfx_coin.finished
	queue_free()
