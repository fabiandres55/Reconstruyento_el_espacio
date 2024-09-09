extends TextureRect


signal mover_abajo_teselado
signal mover_arriba_teselado
signal move_to_top 

var estoy_dentro_teselado  = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	if area == $Area_teselado:
		estoy_dentro_teselado  = true
		emit_signal("mover_abajo_teselado",self)
	pass # Replace with function body.


func _on_figura_move_to_top():
	emit_signal("move_to_top",self)
	pass # Replace with function body.


func _on_Area2D_area_exited(area):
	if area == $Area_teselado:
		estoy_dentro_teselado  = false
		emit_signal("mover_arriba_teselado",self)
	pass # Replace with function body.
