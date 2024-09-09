extends TextureRect

signal move_to_top 
var drag_position = null
################# variable de verificacion de figura entro en un area 2d 
################### la figura va al objetivo del apilacion:
export var va_objetivo = false
var figura_dentro  = false
#### verificacion de rotacion de la figura 
var rota_der_figura = false
var rota_izq_figura = false

#### variables de rotacion:
var grados_rotacion = 0
var grados_der = 9
var grados_izq = -9
var puerta_Rotacion = false
######################################

var objetivo = Vector2(192,449)
var velocidad = Vector2()
var speed = 3500

func _ready():
	hint_tooltip = name
	pass

func _process(delta):
	############################## rotacion derecha
	if rota_der_figura == true:
		grados_rotacion += grados_der
		if grados_rotacion <=90:
			$Sprite.rotation_degrees += grados_der
		else:
			puerta_Rotacion = false
			rota_der_figura = false
			grados_rotacion = 0
	else:
		rota_der_figura = false
	###################### rotacion izquierda
	if rota_izq_figura == true:
		grados_rotacion += grados_izq
		if grados_rotacion >=-90:
			$Sprite.rotation_degrees += grados_izq
		else:
			puerta_Rotacion = false
			rota_izq_figura = false
			grados_rotacion = 0
	else: 
		rota_izq_figura = false
	############################# trayectoria de apilacion:
	rect_position.x = int(rect_position.x )
	rect_position.y  = int(rect_position.y ) 
	if va_objetivo == true:
		if rect_position.x <= 234 and rect_position.x >= 24 and rect_position.y <= 617 and  rect_position.y >= 281:
			rect_position = objetivo
			va_objetivo = false
	pass

func _physics_process(delta):
	if va_objetivo == true:
		velocidad = rect_position.direction_to(objetivo) * speed
		if rect_position.distance_to(objetivo) > 10:
			rect_position.x += int(velocidad.x*delta)
			rect_position.y += int(velocidad.y*delta)
	pass



func _on_TextureRect_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			drag_position = get_global_mouse_position()-rect_global_position
			emit_signal("move_to_top")
		else:
			drag_position = null
	if event is InputEventMouseMotion and drag_position:
		rect_global_position = get_global_mouse_position()-drag_position
	pass # Replace with function body.

	if event is InputEventMouseButton:
		if event.pressed:
			drag_position = get_global_mouse_position()-rect_global_position
			emit_signal("move_to_top")
		else:
			drag_position = null
	if event is InputEventMouseMotion and drag_position:
		rect_global_position = get_global_mouse_position()-drag_position
	pass # Replace with function body.
