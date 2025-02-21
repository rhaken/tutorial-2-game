extends Area2D


func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "GreenShip"):
		get_tree().change_scene_to_file("res://scenes/TamatScreen.tscn")
		print("tamt")
