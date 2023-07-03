extends Area2D
var a = false

func _on_body_entered(body):
	if body.name == "Player":
		a = true
		var tween = get_tree().create_tween()
		tween.tween_property($Label, "modulate:a", 255 ,0.3)

func _physics_process(delta):
	if a == true:
		if Input.get_action_strength("ui_accept") == 1:
			get_tree().change_scene_to_file("res://level/büro.tscn")

func _on_body_exited(body):
	if body.name == "Player":
		a = false
		var tween = get_tree().create_tween()
		tween.tween_property($Label, "modulate:a", 0 ,0.3)
