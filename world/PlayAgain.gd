extends Popup


func _on_Play_pressed():
	get_tree().change_scene("res://world/World.tscn")


func _on_Quit_pressed():
	get_tree().quit(0)


func _on_Tank_exploded():
	popup()
