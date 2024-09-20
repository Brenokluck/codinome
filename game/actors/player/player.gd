class_name Player extends CharacterBody2D

@onready var hit_box: HitBox = $HitBox

const SPEED: float = 400

func get_mov_input() -> void:
	var input_direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_direction * SPEED

func _physics_process(delta: float) -> void:
	get_mov_input()
	move_and_slide()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("attack"):
		hit_box.hit(10.0)
