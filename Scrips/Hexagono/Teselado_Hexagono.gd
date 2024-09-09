extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("/root/Multi_verificacion").vibrar == false:
		$AudioStreamPlayer.stop()
	else: 
		$AudioStreamPlayer.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Salir_pressed():
	$Salir.play(0.05)
	get_node("/root/Multi_verificacion").posicion_camara_nivel_1 = Vector2(4662,539)
	$ColorRect/Salida.play("Intro_saida")
	pass # Replace with function body.


func _on_Salida_animation_finished(anim_name):
	get_tree().change_scene("res://Escenas/Nivel_1/Nivel_1.tscn")
	pass # Replace with function body.
