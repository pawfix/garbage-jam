extends Node
@onready var text_label: Label = $textContainer/textLabel
@onready var text_sprite: AnimatedSprite2D = $textContainer/textSprite
@onready var text_container: HBoxContainer = $textContainer


func createTextBox(text: String, sprite: SpriteFrames) -> void:
	text_container.visible
	text_label.text = text
	text_sprite.sprite_frames = sprite
