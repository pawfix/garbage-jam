extends Button



func _on_button_up() -> void:
	get_tree().change_scene_to_file("res://scenes/mainScene.tscn")
	print(Data.loadUserData(1))
	pass # Replace with function body.
