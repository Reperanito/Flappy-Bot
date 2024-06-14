extends Node2D

signal puntuar

const velocidad = 215

func _physics_process(delta):
	position.x += -velocidad * delta
	if global_position.x <= -200:
		global_position.x = 500


func _on_tubo_body_entered(body):
	if body is Player:
		if body.has_method("die"):
			body.die()


func _on_zonapuntos_body_exited(body):
	if body is Player:
		emit_signal("puntuar")


