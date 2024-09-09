extends Node2D
var vibrar = true

var paso_sound  = true 

func _ready():
	
	if get_node("/root/Multi_verificacion").vibrar == false:
		$AudioStreamPlayer.stop()
	else: 
		$AudioStreamPlayer.play()
	
	OS.center_window()
	if get_node("/root/Multi_verificacion").vibrar == true:
		$Opciones/Vibracion/si_vibrar.modulate = "805959"
		$Opciones/Vibracion/no_vibrar.modulate = "ffffff"
	else:
		$Opciones/Vibracion/si_vibrar.modulate = "ffffff"
		$Opciones/Vibracion/no_vibrar.modulate = "805959"
	
	if get_node("/root/Multi_verificacion").teselar == true:
		$Opciones/Teselado_Auto/no_Teselar.modulate = "ffffff"
		$Opciones/Teselado_Auto/si_Teselar.modulate = "805959"
	else: 
		$Opciones/Teselado_Auto/no_Teselar.modulate = "805959"
		$Opciones/Teselado_Auto/si_Teselar.modulate = "ffffff"
	
	if get_node("/root/Multi_verificacion").apilar == true:
		$Opciones/Apilado_Auto/si_Apilar.modulate = "805959"
		$Opciones/Apilado_Auto/no_Apilar.modulate = "ffffff"
	else:
		$Opciones/Apilado_Auto/si_Apilar.modulate = "ffffff"
		$Opciones/Apilado_Auto/no_Apilar.modulate = "805959"
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if get_node("/root/Multi_verificacion").vibrar == false:
		$AudioStreamPlayer.stop()
		paso_sound = true
	else: 
		if paso_sound == true:
			$AudioStreamPlayer.play()
			paso_sound = false
	
	
	
	if get_node("/root/Multi_verificacion").vibrar == true:
		$Opciones/Vibracion/si_vibrar.modulate = "805959"
		$Opciones/Vibracion/no_vibrar.modulate = "ffffff"
	else:
		$Opciones/Vibracion/si_vibrar.modulate = "ffffff"
		$Opciones/Vibracion/no_vibrar.modulate = "805959"
	
	if get_node("/root/Multi_verificacion").teselar == true:
		$Opciones/Teselado_Auto/no_Teselar.modulate = "ffffff"
		$Opciones/Teselado_Auto/si_Teselar.modulate = "805959"
	else: 
		$Opciones/Teselado_Auto/no_Teselar.modulate = "805959"
		$Opciones/Teselado_Auto/si_Teselar.modulate = "ffffff"
	
	if get_node("/root/Multi_verificacion").apilar == true:
		$Opciones/Apilado_Auto/si_Apilar.modulate = "805959"
		$Opciones/Apilado_Auto/no_Apilar.modulate = "ffffff"
	else:
		$Opciones/Apilado_Auto/si_Apilar.modulate = "ffffff"
		$Opciones/Apilado_Auto/no_Apilar.modulate = "805959"
	
		
	
	pass


func _on_Play_pressed():
	$Botones/Play2.play(0.05)
	$Cortina_escena/Salida.play("Intro")
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Options_pressed():
	$Botones/options.play()
	$Opciones/Opciones.play("Anim_Opciones")
	pass # Replace with function body.


func _on_Intro_animation_finished(anim_name):
	$Texto/Anim.play("Animacion_lestras_otros")
	pass # Replace with function body.


func _on_Salir_pressed():
	$Opciones/Salir2.play(0.05)
	$Opciones/Opciones.play_backwards("Anim_Opciones")
	pass # Replace with function body.


func _on_Salida_animation_finished(anim_name):
	get_tree().change_scene("res://Escenas/Menu/Seleccion_Niveles.tscn")
	pass # Replace with function body.


func _on_si_vibrar_pressed():
	$Opciones/Seleccion.play(0.06)
	get_node("/root/Multi_verificacion").vibrar = true
	pass # Replace with function body.


func _on_no_vibrar_pressed():
	$Opciones/Seleccion.play(0.06)
	get_node("/root/Multi_verificacion").vibrar = false
	pass # Replace with function body.


func _on_si_Teselar_pressed():
	$Opciones/Seleccion.play(0.06)
	get_node("/root/Multi_verificacion").teselar = true
	pass # Replace with function body.


func _on_no_Teselar_pressed():
	$Opciones/Seleccion.play(0.06)
	get_node("/root/Multi_verificacion").teselar = false
	pass # Replace with function body.


func _on_si_Apilar_pressed():
	$Opciones/Seleccion.play(0.06)
	get_node("/root/Multi_verificacion").apilar = true
	pass # Replace with function body.


func _on_no_Apilar_pressed():
	$Opciones/Seleccion.play(0.06)
	get_node("/root/Multi_verificacion").apilar = false
	pass # Replace with function body.



