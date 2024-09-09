extends Node2D


var  que_nivel 

func _ready():
	if get_node("/root/Multi_verificacion").vibrar == false:
		$AudioStreamPlayer.stop()
	else: 
		$AudioStreamPlayer.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_salir_pressed():
	$Botones/Salir2.play(0.05)
	$Intro/salida.play("RESET")
	pass # Replace with function body.


func _on_1_pressed():
	$Botones/Seleccion.play(0.06)
	que_nivel =1
	$Intro/salida.play("RESET")
	pass # Replace with function body.


func _on_salida_animation_finished(anim_name):
	if que_nivel == 1:
		get_tree().change_scene("res://Escenas/Nivel_1/Nivel_1.tscn")
	elif que_nivel == 2:
		get_tree().change_scene("res://Escenas/Nivel_2/Nivel_2.tscn")
	elif que_nivel ==3:
		get_tree().change_scene("res://Escenas/Nivel_3/nivel_3.tscn")
	else:
		get_tree().change_scene("res://Escenas/Menu/Menu.tscn")
	pass # Replace with function body.


func _on_2_pressed():
	$Botones/Seleccion.play(0.06)
	que_nivel =2
	$Intro/salida.play("RESET")
	pass # Replace with function body.


func _on_3_pressed():
	$Botones/Seleccion.play(0.06)
	que_nivel =3
	$Intro/salida.play("RESET")
	pass # Replace with function body.
