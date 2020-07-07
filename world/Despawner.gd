extends Area2D

signal despawned


func _on_Despawner_area_exited(area):
	area.queue_free()
	emit_signal("despawned")


func _on_Despawner_body_exited(body):
	body.queue_free()
	emit_signal("despanwed")
