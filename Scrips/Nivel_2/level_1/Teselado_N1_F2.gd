extends Control


func _ready():
	if get_node("/root/Multi_verificacion").vibrar == false:
		$AudioStreamPlayer.stop()
	else: 
		$AudioStreamPlayer.play()

func _on_Salir_pressed():
	$Salida.play(0.05)
	get_node("/root/Multi_verificacion").posicion_camara_nivel_2 = Vector2(963,539)
	$ColorRect/Salida.play("Intro_salida")
	pass # Replace with function body.


func _on_Salida_animation_finished(anim_name):
	get_tree().change_scene("res://Escenas/Nivel_2/Nivel_2.tscn")
	pass # Replace with function body.
