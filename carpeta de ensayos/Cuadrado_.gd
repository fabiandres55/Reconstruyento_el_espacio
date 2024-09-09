extends Node2D
var figura_entro = false

func _on_Area2D_area_entered(area):
	if area == $Cuadrado/Area2D:
		figura_entro = true
	pass # Replace with function body.

func _on_Area2D_area_exited(area):
	if area == $Cuadrado/Area2D:
		figura_entro = false
	pass # Replace with function body.
