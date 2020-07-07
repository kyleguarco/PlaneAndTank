extends RigidBody2D


func _on_Bomb_body_entered(body):
	body.queue_free()
	queue_free()
