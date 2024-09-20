class_name HitBox extends Area2D

func _init() -> void:
	pass
	
func hit(damage: float) -> void:
	print('%s hit with %s damage' % [name, str(damage)])
	print('')
	for hurtbox: HurtBox in get_overlapping_areas().filter(_filter_hurtbox):
		hurtbox.hurt(damage)
	
#region Lambdas	
func _filter_hurtbox(body: Node2D) -> bool:
	return body is HurtBox
#endregion
