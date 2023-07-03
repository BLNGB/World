extends CanvasLayer

var pn = "Person Name"
var massageP = "Hello"

func _ready():
	$".".visible = Global.Mod


func _process(delta):
	pn = Global.PersonName
	$NinePatchRect/Personname.text = pn
	var tween = get_tree().create_tween()
	tween.tween_property($".", "visible", Global.Mod , 0)
	if $NinePatchRect/Personname.text == "[Ludolf]:":
		$NinePatchRect/AiChat.text = "Willkommen bei Fairwork. \nBei fragen wende dich einfach an Willi"
	if $NinePatchRect/Personname.text == "[Willi]:":
		$NinePatchRect/AiChat.text = "Hay, wie kann ich dir helfen?"

func _input(event):
	if event is InputEventKey:
		if Input.get_action_strength("ui_cancel") == 1:
			$NinePatchRect/Playerinput.release_focus()
		
		if Input.get_action_strength("ui_accept") == 1:
			massageP = $NinePatchRect/Playerinput.text

func _on_playerinput_focus_entered():
	Global.input_enabled = false

func _on_playerinput_focus_exited():
	Global.input_enabled = true
