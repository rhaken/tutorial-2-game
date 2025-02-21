extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if (body.name == "BlueShip" or body.name == "GreenShip"):
		get_tree().reload_current_scene()
