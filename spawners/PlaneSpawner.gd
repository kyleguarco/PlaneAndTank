extends Position2D

signal spawned

const PLANE_SCENE = preload("res://entities/Plane.tscn")

export(NodePath) var spawn_dest = get_parent()
export(Vector2) var direction = Vector2.LEFT


func _on_Timer_timeout():
	var plane = PLANE_SCENE.instance()
	plane.set_direction(direction)
	plane.set_position(get_position())
	get_node(spawn_dest).add_child(plane)
	
	$Timer.set_wait_time(randi() % 10 + 2)
	
	emit_signal("spawned")
