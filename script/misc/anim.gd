extends Node

func fadeOutAnim(target: TileMapLayer, state: bool) -> void:
	var tween = create_tween()

	if !state:
		print("Fading out")

		target.enabled = true
		target.modulate = Color(1, 1, 1, 1)

		tween.tween_property(target, "modulate", Color(1, 1, 1, 0), 0.2)

		await tween.finished

		target.enabled = false

	else:
		print("Fading in")

		target.enabled = true
		target.modulate = Color(1, 1, 1, 0)

		tween.tween_property(target, "modulate", Color(1, 1, 1, 1), 0.2)
