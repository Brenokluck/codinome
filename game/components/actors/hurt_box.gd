class_name HurtBox extends Area2D

func _ready() -> void:
	pass
	
func hurt(damage: float) -> void:
	print('%s received %s damage' % [name, str(damage)])
