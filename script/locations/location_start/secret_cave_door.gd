extends Area2D
@onready var cave_enter_label: Label = $caveEnterLabel
@onready var main_scene: Node2D = $"../../.."
@onready var location_start: Node2D = $"../.."
@onready var cave_1 = preload("res://scenes/locations/cave_1.tscn")
var canInterract: bool = false
@onready var player: Node2D = $"../../../player"

var wasAlreadyEntered: bool = false

func _process(_delta: float) -> void:
	if canInterract and Input.is_action_just_pressed("interact"):
		main_scene.remove_child(location_start)
		location_start.queue_free()
		var cave_scene = cave_1.instantiate()
		main_scene.add_child(cave_scene)
		player.global_position = Vector2(350, 45)

func _on_body_entered(_body: Node2D) -> void:
	if !wasAlreadyEntered:
		wasAlreadyEntered = true
		return
	Anim.animateLabel(cave_enter_label, true)
	canInterract = true
	
	
func _on_body_exited(_body: Node2D) -> void:
	Anim.animateLabel(cave_enter_label, false)
	canInterract = false
