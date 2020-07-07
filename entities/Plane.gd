extends Node2D

var direction = Vector2.LEFT

export(int) var movement_modifier = 20


func _physics_process(delta):
	set_position(get_position() + direction * movement_modifier * delta)


func set_direction(p_dir):
	direction = p_dir
	$Sprite.flip_h = direction != Vector2.RIGHT
