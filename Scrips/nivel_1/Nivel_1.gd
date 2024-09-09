extends Node2D


var posicion_1 = Vector2(963,539)
var posicion_2 = Vector2(2873,539)
var posicion_3 = Vector2(4662,539)


var escena_de_figura_a_entrar 

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("/root/Multi_verificacion").vibrar == false:
		$AudioStreamPlayer.stop()
	else: 
		$AudioStreamPlayer.play()
	
	
	if get_node("/root/Multi_verificacion").posicion_camara_nivel_1 == null or get_node("/root/Multi_verificacion").posicion_camara_nivel_1 == Vector2(963,539) :
		$Camera2D.position = posicion_1
	elif get_node("/root/Multi_verificacion").posicion_camara_nivel_1 == Vector2(2873,539):
		$Camera2D.position = posicion_2
	else: 
		$Camera2D.position = posicion_3
	pass # Replace with function body.

func _process(delta):
	pass

func _on_salir_pressed():
	$Camera2D/Salir2.play(0.05)
	$Camera2D/salida.play("Intro")
	pass 

func _on_Izq_pressed():
	$Camera2D/Seleccion.play(0.06)
	if $Camera2D.position == posicion_1:
		pass
	elif $Camera2D.position == posicion_2:
		$Camera2D.position = posicion_1
	else:
		$Camera2D.position = posicion_2
	pass # Replace with function body.


func _on_Der_pressed():
	$Camera2D/Seleccion.play(0.06)
	if $Camera2D.position == posicion_3:
		pass
	elif $Camera2D.position == posicion_2:
		$Camera2D.position = posicion_3
	else: 
		$Camera2D.position = posicion_2
	pass # Replace with function body.


func _on_salida_animation_finished(anim_name):
	get_tree().change_scene("res://Escenas/Menu/Seleccion_Niveles.tscn")
	pass # Replace with function body.


func _on_TextureButton_pressed():
	$selec_figura.play(0.06)
	escena_de_figura_a_entrar = 1
	$Camera2D/salida_level.play("salida_niveles")
	pass # Replace with function body.


func _on_Triangulos_pressed():
	$selec_figura.play(0.06)
	escena_de_figura_a_entrar = 2
	$Camera2D/salida_level.play("salida_niveles")
	pass # Replace with function body.


func _on_Hexagonos_pressed():
	$selec_figura.play(0.06)
	escena_de_figura_a_entrar = 3
	$Camera2D/salida_level.play("salida_niveles")
	pass # Replace with function body.


func _on_salida_level_animation_finished(anim_name):
	if escena_de_figura_a_entrar == 1:
		get_tree().change_scene("res://Escenas/Teselados/Teselado_Cuadrado.tscn")
	elif escena_de_figura_a_entrar == 2:
		get_tree().change_scene("res://Escenas/Teselados/Teselado_Triangulo.tscn")
	else:
		get_tree().change_scene("res://Escenas/Teselados/Teselado_Hexagono.tscn")
	pass # Replace with function body.
