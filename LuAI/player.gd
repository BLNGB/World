extends CharacterBody2D

func _ready():
	$AnimatedSprite2D.play("idle")

func _physics_process(delta):
	if Global.input_enabled:
		var input_vector = Vector2.ZERO
		input_vector.x = Input.get_action_strength("ui_right") * 1.5 - Input.get_action_strength("ui_left") * 1.5
		input_vector.y = Input.get_action_strength("ui_down") * 1.5 - Input.get_action_strength("ui_up") * 1.5
		if input_vector.x != 0 || input_vector.y != 0:
			$AnimatedSprite2D.play("Walk")
		if input_vector.x == 0 && input_vector.y == 0:
			$AnimatedSprite2D.play("idle")
			
			
		if input_vector != Vector2.ZERO:
			velocity = input_vector
		else:
			velocity = Vector2.ZERO
		move_and_collide(velocity)
