extends Area2D

var a = false
var day= true

func _on_body_entered(body):
	if body.name == "Player":
		a = true
		
func _on_body_exited(body):
	if body.name == "Player":
		a = false
	
func _process(delta):
	if a == true && Input.get_action_strength("ui_accept") == 1:
		if day == true:
			$"../Haus1/AnimatedSprite2D".play("night")
			day = false
		else :
			$"../Haus1/AnimatedSprite2D".play("day")
			day = true
