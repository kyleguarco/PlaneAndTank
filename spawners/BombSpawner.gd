extends Node

signal spawned

const BOMB_SCENE = preload("res://entities/Bomb.tscn")

export(NodePath) var spawn_dest
export(int) var _spawn_time_max = 3


func _ready():
	$Timer.start(randi() % _spawn_time_max + 1)


func _on_Timer_timeout():
	spawn_bomb()
	
	queue_free()


func spawn_bomb():
	get_node(spawn_dest).add_child(BOMB_SCENE.instance())
	
	emit_signal("spawned")
