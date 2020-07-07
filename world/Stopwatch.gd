class_name Stopwatch
extends Node

signal started
signal stopped (time)
signal reset

var time_elapsed = 0 setget ,get_time_elapsed

export(bool) var autostart = false


func _ready():
	if autostart:
		start()
	else:
		set_process(false)


func _process(delta):
	time_elapsed += delta


func stop():
	set_process(false)
	emit_signal("stopped", time_elapsed)


func start():
	set_process(true)
	emit_signal("started")


func reset():
	time_elapsed = 0
	emit_signal("reset")


func is_running():
	return is_processing()


func get_time_elapsed():
	return time_elapsed


func _on_Tank_exploded():
	stop()
