class_name Health extends Node2D

@export var max_health: float = 100.0
@export var current_health: float = 100.0
@export var hurt_box: HurtBox

signal health_changed(old_health: float, new_health: float)

func _ready() -> void:
	if hurt_box:
		hurt_box.hurted.connect(_on_hurt)
	
func _on_hurt(damage: float) -> void:
	var old_health: float = current_health
	
	current_health -= min(damage, current_health)
	print('%s health changed from %s to %s' % [get_parent().name, old_health, current_health])
	
	health_changed.emit(old_health, current_health)
