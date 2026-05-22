extends Node2D

var canInteract: bool = false
@onready var chest_sprite: AnimatedSprite2D = $chestSprite

func _ready() -> void:
	chest_sprite.play("default")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact") and canInteract:
		openChest()


func _on_area_2d_body_entered(_body: Node2D) -> void:
	canInteract = true

func _on_area_2d_body_exited(_body: Node2D) -> void:
	canInteract = false

func openChest() -> void:
	chest_sprite.play("open")
