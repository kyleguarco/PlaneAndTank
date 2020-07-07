extends KinematicBody2D

signal exploded

var direction := Vector2.ZERO

onready var _sprite: Sprite = $Sprite

export(int) var movement_modifier = 100


func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.is_action("ui_left"):
			_sprite.flip_h = true
			direction = Vector2.LEFT
		elif event.is_action("ui_right"):
			_sprite.flip_h = false
			direction = Vector2.RIGHT


func _physics_process(delta: float) -> void:
	if not direction == Vector2.ZERO:
		move_and_slide(direction * movement_modifier)
		direction = Vector2.ZERO


func _exit_tree():
	emit_signal("exploded")
