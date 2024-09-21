class_name HurtBox extends Area2D

signal hurted(damage: float)

func _ready() -> void:
	pass
	
func hurt(damage: float) -> void:
	print('%s received %s damage' % [get_parent().name, str(damage)])
	hurted.emit(damage)
