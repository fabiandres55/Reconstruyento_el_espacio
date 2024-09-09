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
	$Salida.play(0.05)
	get_node("/root/Multi_verificacion").posicion_camara_nivel_1 = Vector2(963,539)
	$ColorRect/salida.play("intro")
	pass # Replace with function body.


