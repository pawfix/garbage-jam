extends Area2D

var canInterract: bool = false

func _process(delta: float) -> void:
	if canInterract and Input.is_action_just_pressed("interact"):
		get_tree().change_scene_to_file("res://scenes/locations/cave_1.tscn")


func _on_body_entered(body: Node2D) -> void:
	canInterract = true
	
	
func _on_body_exited(body: Node2D) -> void:
	canInterract = false
