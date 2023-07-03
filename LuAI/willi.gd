extends Area2D

var Promille = 0

func _on_body_entered(body):
	Global.PersonName = "[Willi]:"
	Global.Promille = Promille
	Global.Mod = true


func _on_body_exited(body):
	Global.Mod = false
