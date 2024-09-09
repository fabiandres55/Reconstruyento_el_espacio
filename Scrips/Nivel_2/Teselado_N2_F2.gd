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


func _on_salida_pressed():
	$Salida.play(0.05)
	get_node("/root/Multi_verificacion").posicion_camara_nivel_2 = Vector2(2873,539)
	$ColorRect/Salida.play("Intro_salida")
	pass # Replace with function body.


func _on_Salida_animation_finished(anim_name):
	get_tree().change_scene("res://Escenas/Nivel_2/Nivel_2.tscn")
	pass # Replace with function body.
