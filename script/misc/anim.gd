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

func animateLabel(target: Label, state: bool):
	var tween = create_tween()
	var original_pos = target.position
	tween.set_parallel()

	if state:
		target.visible = true
		target.modulate.a = 0.0

		target.position = original_pos + Vector2(0, -10)

		tween.tween_property(target, "modulate:a", 1.0, 0.2)
		tween.tween_property(target, "position", original_pos, 0.2)

	else:
		tween.tween_property(target, "modulate:a", 0.0, 0.2)
		tween.tween_property(target, "position", target.position + Vector2(0, 10), 0.2)
		
		await tween.finished
		if !is_instance_valid(target):
			return
		target.visible = false
		target.position = original_pos
