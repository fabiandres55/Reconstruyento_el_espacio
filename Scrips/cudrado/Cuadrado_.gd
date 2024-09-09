extends TextureRect

signal mover_abajo_teselado
signal mover_arriba_teselado
signal move_to_top 


var estoy_dentro_teselado  = false


func _on_Area2D_area_entered(area):
	if area == $Area_teselado:
		estoy_dentro_teselado  = true
		emit_signal("mover_abajo_teselado",self)
	pass # Replace with function body.


func _on_Area2D_area_exited(area):
	if area == $Area_teselado:
		estoy_dentro_teselado  = false
		emit_signal("mover_arriba_teselado",self)
	pass # Replace with function body.


func _on_Cuadrado_move_to_top():
	emit_signal("move_to_top",self)
	pass # Replace with function body.
