extends Position2D

signal spawned

const PLANE_SCENE = preload("res://entities/Plane.tscn")

export(NodePath) var spawn_dest = get_parent()
export(Vector2) var direction = Vector2.LEFT
export(int) var _spawn_time_max = 5


func _on_Timer_timeout():
	var plane = PLANE_SCENE.instance()
	plane.set_direction(direction)
	plane.set_position(get_position())
	get_node(spawn_dest).add_child(plane)
	
	$Timer.set_wait_time(randi() % _spawn_time_max + 1)
	
	emit_signal("spawned")
