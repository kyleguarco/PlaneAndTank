extends Label


func _process(delta):
	set_text(str($Stopwatch.get_time_elapsed()))


func _on_Stopwatch_stopped(time):
	set_process(false)
