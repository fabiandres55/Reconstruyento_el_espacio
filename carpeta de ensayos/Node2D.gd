extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $figuras/Cuadrado_.figura_entro == true:
		print("la figura 1 esta dentro")
	else:
		print("la figura 1 esta fuera")
	pass
