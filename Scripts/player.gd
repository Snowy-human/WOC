extends CharacterBody2D

@export var stats = Resource

@onready var max_jumps = stats.Stats_Resource.Number_of_jumps
@onready var jumps_left = max_jumps

## to do make new code as this is base code or this will kill itself later :3 - WT

func _physics_process(delta: float) -> void:

	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jumps_left = max_jumps

	if Input.is_action_just_pressed("ui_accept") and not jumps_left == 0:
		velocity.y = stats.Stats_Resource.Jump_power
		jumps_left += -1

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * stats.Stats_Resource.Speed * stats.Stats_Resource.Run_power
	else:
		velocity.x = move_toward(velocity.x, 0, stats.Stats_Resource.Speed)

	move_and_slide()
