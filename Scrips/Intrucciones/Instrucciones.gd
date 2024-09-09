extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("/root/Multi_verificacion").intrucciones_usuario == true:
		$Timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$AnimationPlayer.play("amin_1")
	pass # Replace with function body.


func _on_Button_pressed():
	$Seleccion.play(0.06)
	get_node("/root/Multi_verificacion").intrucciones_usuario = false
	$AnimationPlayer.play_backwards("amin_1")
	pass # Replace with function body.
