extends Area2D

@onready var foreground: TileMapLayer = $"../../foreground"

var wasEntered = false

# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	pass # Replace with function body.




func _on_body_entered(body: Node2D) -> void:
	if !wasEntered:
		wasEntered = true
		return
	Anim.fadeOutAnim(foreground, false)
	#foreground.enabled = false
	print("Entered secret")


func _on_body_exited(body: Node2D) -> void:
	Anim.fadeOutAnim(foreground, true)
	print("Left Secret")
