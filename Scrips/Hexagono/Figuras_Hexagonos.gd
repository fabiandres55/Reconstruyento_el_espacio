extends Control


var figura_selecionada = null
var figura_entro_teselado = false
var puerta_bajar_capa = false
######################### variables de movimiento de teselado:
var velocidad = Vector2()
var rapidez = 3500
var estamos_teselado = false
#############################
var teselar_ = false
var teselar_2 = false
var teselar_3 = false
var teselar_4 = false
var teselar_5 = false
var teselar_6 = false
var teselar_7 = false
var teselar_8 = false
var teselar_9 = false
var teselar_10 = false
var teselar_11 = false
var teselar_12 = false
var teselar_13 = false
var teselar_14 = false
var teselar_15 = false
var teselar_16 = false
var teselar_17 = false
var teselar_18 = false
var teselar_19 = false
var teselar_20 = false
var teselar_21 = false
var teselar_22 = false
var teselar_23 = false
var teselar_24 = false
var teselar_25 = false
var teselar_26 = false
var teselar_27 = false
var teselar_28 = false
var teselar_29 = false
var teselar_30 = false
var teselar_31 = false
var teselar_32 = false

var posicion_1 = Vector2(553.024,135.045)
var posicion_2 = Vector2(823.024,134.647)
var posicion_3 = Vector2(1093.024,135.129)
var posicion_4 = Vector2(1363.024,134.337)
var posicion_5 = Vector2(688.418,337.421)
var posicion_6 = Vector2(958.147,337.282)
var posicion_7 = Vector2(1228.082,336.172)
var posicion_8 = Vector2(553.007,539.185)
var posicion_9 = Vector2(823.059,538.651)
var posicion_10 = Vector2(1093.469,538.347)
var posicion_11 = Vector2(1363.118,538.248)
var posicion_12 = Vector2(688.259,740.546)
var posicion_13 = Vector2(958.268,739.578)
var posicion_14 = Vector2(1228.137,740.321)
var posicion_15 = Vector2(553.24,942.654)
var posicion_16 = Vector2(823.282,941.985)
var posicion_17 = Vector2(1092.745,941.4)
var posicion_18 = Vector2(1362.473,941.235)
var posicion_19 = Vector2(419.526,1145.233)
var posicion_20 = Vector2(689.448,1143.679)
var posicion_21 = Vector2(958.735,1143.179)
var posicion_22 = Vector2(1227.229,1142.483)
var posicion_23 = Vector2(1496.481,1142.729)
var posicion_24 = Vector2(419.193,740.841)
var posicion_25 = Vector2(419.108,337.177)
var posicion_26 = Vector2(418.173,-67.381)
var posicion_27 = Vector2(687.649,-66.607)
var posicion_28 = Vector2(958.252,-67.213)
var posicion_29 = Vector2(1227.51,-67.474)
var posicion_30 = Vector2(1497.623,-68.099)
var posicion_31 = Vector2(1497.688,335.636)
var posicion_32 = Vector2(1498.266,740.309)



func move_cuadrado_to_top(node):
	figura_selecionada = node
	if node.estoy_dentro_teselado  == false:
		move_child(node,get_child_count()-1)
	else: 
		move_child(node,$Imagen.get_index())
	pass

func move_cuadrado_to_down_teselado(node):
	move_child(node,$Imagen.get_index())
	pass

func move_cuadrado_to_up_teselado(node):
	move_child(node,get_child_count()-1)
	pass


func _ready():
	if get_node("/root/Multi_verificacion").teselar == true:
		$Imagen/Imagen_der/Teselar.visible = true
	else: 
		$Imagen/Imagen_der/Teselar.visible = false
	################### verificacion_apilado
	if get_node("/root/Multi_verificacion").apilar == true:
		$Imagen/Imagen_der/Apilar.visible = true
	else: 
		$Imagen/Imagen_der/Apilar.visible = false
	
	for cuadrado in get_children():
		cuadrado.connect("move_to_top",self,"move_cuadrado_to_top")
		cuadrado.connect("mover_abajo_teselado",self,"move_cuadrado_to_down_teselado")
		cuadrado.connect("mover_arriba_teselado",self,"move_cuadrado_to_up_teselado")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	if teselar_ == true: 
		if $Hexagono_/Hexagono.rect_position.x >= posicion_1.x-120 and$Hexagono_/Hexagono.rect_position.x<= posicion_1.x+120 and $Hexagono_/Hexagono.rect_position.y <=posicion_1.y+120 and $Hexagono_/Hexagono.rect_position.y >=posicion_1.y-120:
			$Hexagono_/Hexagono.rect_position = posicion_1
			teselar_ = false
			$Hexagono_/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_/Hexagono.rect_position.direction_to(posicion_1)*rapidez
		if $Hexagono_/Hexagono.rect_position.distance_to(posicion_1) > 10:
			$Hexagono_/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_2
	if teselar_2 == true: 
		if $Hexagono_2/Hexagono.rect_position.x >= posicion_2.x-120 and$Hexagono_2/Hexagono.rect_position.x<= posicion_2.x+120 and $Hexagono_2/Hexagono.rect_position.y <=posicion_2.y+120 and $Hexagono_2/Hexagono.rect_position.y >=posicion_2.y-120:
			$Hexagono_2/Hexagono.rect_position = posicion_2
			teselar_2 = false
			$Hexagono_2/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_2/Hexagono.rect_position.direction_to(posicion_2)*rapidez
		if $Hexagono_2/Hexagono.rect_position.distance_to(posicion_2) > 10:
			$Hexagono_2/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_2/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_3
	if teselar_3 == true: 
		if $Hexagono_3/Hexagono.rect_position.x >= posicion_3.x-120 and$Hexagono_3/Hexagono.rect_position.x<= posicion_3.x+120 and $Hexagono_3/Hexagono.rect_position.y <=posicion_3.y+120 and $Hexagono_3/Hexagono.rect_position.y >=posicion_3.y-120:
			$Hexagono_3/Hexagono.rect_position = posicion_3
			teselar_3 = false
			$Hexagono_3/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_3/Hexagono.rect_position.direction_to(posicion_3)*rapidez
		if $Hexagono_3/Hexagono.rect_position.distance_to(posicion_3) > 10:
			$Hexagono_3/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_3/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_4
	if teselar_4 == true: 
		if $Hexagono_4/Hexagono.rect_position.x >= posicion_4.x-120 and$Hexagono_4/Hexagono.rect_position.x<= posicion_4.x+120 and $Hexagono_4/Hexagono.rect_position.y <=posicion_4.y+120 and $Hexagono_4/Hexagono.rect_position.y >=posicion_4.y-120:
			$Hexagono_4/Hexagono.rect_position = posicion_4
			teselar_4 = false
			$Hexagono_4/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_4/Hexagono.rect_position.direction_to(posicion_4)*rapidez
		if $Hexagono_4/Hexagono.rect_position.distance_to(posicion_4) > 10:
			$Hexagono_4/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_4/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_5
	if teselar_5 == true: 
		if $Hexagono_5/Hexagono.rect_position.x >= posicion_5.x-120 and$Hexagono_5/Hexagono.rect_position.x<= posicion_5.x+120 and $Hexagono_5/Hexagono.rect_position.y <=posicion_5.y+120 and $Hexagono_5/Hexagono.rect_position.y >=posicion_5.y-120:
			$Hexagono_5/Hexagono.rect_position = posicion_5
			teselar_5 = false
			$Hexagono_5/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_5/Hexagono.rect_position.direction_to(posicion_5)*rapidez
		if $Hexagono_5/Hexagono.rect_position.distance_to(posicion_5) > 10:
			$Hexagono_5/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_5/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_6
	if teselar_6 == true: 
		if $Hexagono_6/Hexagono.rect_position.x >= posicion_6.x-120 and$Hexagono_6/Hexagono.rect_position.x<= posicion_6.x+120 and $Hexagono_6/Hexagono.rect_position.y <=posicion_6.y+120 and $Hexagono_6/Hexagono.rect_position.y >=posicion_6.y-120:
			$Hexagono_6/Hexagono.rect_position = posicion_6
			teselar_6 = false
			$Hexagono_6/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_6/Hexagono.rect_position.direction_to(posicion_6)*rapidez
		if $Hexagono_6/Hexagono.rect_position.distance_to(posicion_6) > 10:
			$Hexagono_6/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_6/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_7
	if teselar_7 == true: 
		if $Hexagono_7/Hexagono.rect_position.x >= posicion_7.x-120 and$Hexagono_7/Hexagono.rect_position.x<= posicion_7.x+120 and $Hexagono_7/Hexagono.rect_position.y <=posicion_7.y+120 and $Hexagono_7/Hexagono.rect_position.y >=posicion_7.y-120:
			$Hexagono_7/Hexagono.rect_position = posicion_7
			teselar_7 = false
			$Hexagono_7/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_7/Hexagono.rect_position.direction_to(posicion_7)*rapidez
		if $Hexagono_7/Hexagono.rect_position.distance_to(posicion_7) > 10:
			$Hexagono_7/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_7/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_8
	if teselar_8 == true: 
		if $Hexagono_8/Hexagono.rect_position.x >= posicion_8.x-120 and$Hexagono_8/Hexagono.rect_position.x<= posicion_8.x+120 and $Hexagono_8/Hexagono.rect_position.y <=posicion_8.y+120 and $Hexagono_8/Hexagono.rect_position.y >=posicion_8.y-120:
			$Hexagono_8/Hexagono.rect_position = posicion_8
			teselar_8 = false
			$Hexagono_8/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_8/Hexagono.rect_position.direction_to(posicion_8)*rapidez
		if $Hexagono_8/Hexagono.rect_position.distance_to(posicion_8) > 10:
			$Hexagono_8/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_8/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_9
	if teselar_9 == true: 
		if $Hexagono_9/Hexagono.rect_position.x >= posicion_9.x-120 and$Hexagono_9/Hexagono.rect_position.x<= posicion_9.x+120 and $Hexagono_9/Hexagono.rect_position.y <=posicion_9.y+120 and $Hexagono_9/Hexagono.rect_position.y >=posicion_9.y-120:
			$Hexagono_9/Hexagono.rect_position = posicion_9
			teselar_9 = false
			$Hexagono_9/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_9/Hexagono.rect_position.direction_to(posicion_9)*rapidez
		if $Hexagono_9/Hexagono.rect_position.distance_to(posicion_9) > 10:
			$Hexagono_9/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_9/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_10
	if teselar_10 == true: 
		if $Hexagono_10/Hexagono.rect_position.x >= posicion_10.x-120 and$Hexagono_10/Hexagono.rect_position.x<= posicion_10.x+120 and $Hexagono_10/Hexagono.rect_position.y <=posicion_10.y+120 and $Hexagono_10/Hexagono.rect_position.y >=posicion_10.y-120:
			$Hexagono_10/Hexagono.rect_position = posicion_10
			teselar_10 = false
			$Hexagono_10/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_10/Hexagono.rect_position.direction_to(posicion_10)*rapidez
		if $Hexagono_10/Hexagono.rect_position.distance_to(posicion_10) > 10:
			$Hexagono_10/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_10/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_11
	if teselar_11 == true: 
		if $Hexagono_11/Hexagono.rect_position.x >= posicion_11.x-120 and$Hexagono_11/Hexagono.rect_position.x<= posicion_11.x+120 and $Hexagono_11/Hexagono.rect_position.y <=posicion_11.y+120 and $Hexagono_11/Hexagono.rect_position.y >=posicion_11.y-120:
			$Hexagono_11/Hexagono.rect_position = posicion_11
			teselar_11 = false
			$Hexagono_11/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_11/Hexagono.rect_position.direction_to(posicion_11)*rapidez
		if $Hexagono_11/Hexagono.rect_position.distance_to(posicion_11) > 10:
			$Hexagono_11/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_11/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_12
	if teselar_12 == true: 
		if $Hexagono_12/Hexagono.rect_position.x >= posicion_12.x-120 and$Hexagono_12/Hexagono.rect_position.x<= posicion_12.x+120 and $Hexagono_12/Hexagono.rect_position.y <=posicion_12.y+120 and $Hexagono_12/Hexagono.rect_position.y >=posicion_12.y-120:
			$Hexagono_12/Hexagono.rect_position = posicion_12
			teselar_12 = false
			$Hexagono_12/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_12/Hexagono.rect_position.direction_to(posicion_12)*rapidez
		if $Hexagono_12/Hexagono.rect_position.distance_to(posicion_12) > 10:
			$Hexagono_12/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_12/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_13
	if teselar_13 == true: 
		if $Hexagono_13/Hexagono.rect_position.x >= posicion_13.x-120 and$Hexagono_13/Hexagono.rect_position.x<= posicion_13.x+120 and $Hexagono_13/Hexagono.rect_position.y <=posicion_13.y+120 and $Hexagono_13/Hexagono.rect_position.y >=posicion_13.y-120:
			$Hexagono_13/Hexagono.rect_position = posicion_13
			teselar_13 = false
			$Hexagono_13/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_13/Hexagono.rect_position.direction_to(posicion_13)*rapidez
		if $Hexagono_13/Hexagono.rect_position.distance_to(posicion_13) > 10:
			$Hexagono_13/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_13/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_14
	if teselar_14 == true: 
		if $Hexagono_14/Hexagono.rect_position.x >= posicion_14.x-120 and$Hexagono_14/Hexagono.rect_position.x<= posicion_14.x+120 and $Hexagono_14/Hexagono.rect_position.y <=posicion_14.y+120 and $Hexagono_14/Hexagono.rect_position.y >=posicion_14.y-120:
			$Hexagono_14/Hexagono.rect_position = posicion_14
			teselar_14 = false
			$Hexagono_14/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_14/Hexagono.rect_position.direction_to(posicion_14)*rapidez
		if $Hexagono_14/Hexagono.rect_position.distance_to(posicion_14) > 10:
			$Hexagono_14/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_14/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_15
	if teselar_15 == true: 
		if $Hexagono_15/Hexagono.rect_position.x >= posicion_15.x-120 and$Hexagono_15/Hexagono.rect_position.x<= posicion_15.x+120 and $Hexagono_15/Hexagono.rect_position.y <=posicion_15.y+120 and $Hexagono_15/Hexagono.rect_position.y >=posicion_15.y-120:
			$Hexagono_15/Hexagono.rect_position = posicion_15
			teselar_15 = false
			$Hexagono_15/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_15/Hexagono.rect_position.direction_to(posicion_15)*rapidez
		if $Hexagono_15/Hexagono.rect_position.distance_to(posicion_15) > 10:
			$Hexagono_15/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_15/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_16
	if teselar_16 == true: 
		if $Hexagono_16/Hexagono.rect_position.x >= posicion_16.x-120 and$Hexagono_16/Hexagono.rect_position.x<= posicion_16.x+120 and $Hexagono_16/Hexagono.rect_position.y <=posicion_16.y+120 and $Hexagono_16/Hexagono.rect_position.y >=posicion_16.y-120:
			$Hexagono_16/Hexagono.rect_position = posicion_16
			teselar_16 = false
			$Hexagono_16/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_16/Hexagono.rect_position.direction_to(posicion_16)*rapidez
		if $Hexagono_16/Hexagono.rect_position.distance_to(posicion_16) > 10:
			$Hexagono_16/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_16/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_17
	if teselar_17 == true: 
		if $Hexagono_17/Hexagono.rect_position.x >= posicion_17.x-120 and$Hexagono_17/Hexagono.rect_position.x<= posicion_17.x+120 and $Hexagono_17/Hexagono.rect_position.y <=posicion_17.y+120 and $Hexagono_17/Hexagono.rect_position.y >=posicion_17.y-120:
			$Hexagono_17/Hexagono.rect_position = posicion_17
			teselar_17 = false
			$Hexagono_17/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_17/Hexagono.rect_position.direction_to(posicion_17)*rapidez
		if $Hexagono_17/Hexagono.rect_position.distance_to(posicion_17) > 10:
			$Hexagono_17/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_17/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_18
	if teselar_18 == true: 
		if $Hexagono_18/Hexagono.rect_position.x >= posicion_18.x-120 and$Hexagono_18/Hexagono.rect_position.x<= posicion_18.x+120 and $Hexagono_18/Hexagono.rect_position.y <=posicion_18.y+120 and $Hexagono_18/Hexagono.rect_position.y >=posicion_18.y-120:
			$Hexagono_18/Hexagono.rect_position = posicion_18
			teselar_18 = false
			$Hexagono_18/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_18/Hexagono.rect_position.direction_to(posicion_18)*rapidez
		if $Hexagono_18/Hexagono.rect_position.distance_to(posicion_18) > 10:
			$Hexagono_18/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_18/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_19
	if teselar_19 == true: 
		if $Hexagono_19/Hexagono.rect_position.x >= posicion_19.x-120 and$Hexagono_19/Hexagono.rect_position.x<= posicion_19.x+120 and $Hexagono_19/Hexagono.rect_position.y <=posicion_19.y+120 and $Hexagono_19/Hexagono.rect_position.y >=posicion_19.y-120:
			$Hexagono_19/Hexagono.rect_position = posicion_19
			teselar_19 = false
			$Hexagono_19/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_19/Hexagono.rect_position.direction_to(posicion_19)*rapidez
		if $Hexagono_19/Hexagono.rect_position.distance_to(posicion_19) > 10:
			$Hexagono_19/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_19/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_20
	if teselar_20 == true: 
		if $Hexagono_20/Hexagono.rect_position.x >= posicion_20.x-120 and$Hexagono_20/Hexagono.rect_position.x<= posicion_20.x+120 and $Hexagono_20/Hexagono.rect_position.y <=posicion_20.y+120 and $Hexagono_20/Hexagono.rect_position.y >=posicion_20.y-120:
			$Hexagono_20/Hexagono.rect_position = posicion_20
			teselar_20 = false
			$Hexagono_20/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_20/Hexagono.rect_position.direction_to(posicion_20)*rapidez
		if $Hexagono_20/Hexagono.rect_position.distance_to(posicion_20) > 10:
			$Hexagono_20/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_20/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_21
	if teselar_21 == true: 
		if $Hexagono_21/Hexagono.rect_position.x >= posicion_21.x-120 and$Hexagono_21/Hexagono.rect_position.x<= posicion_21.x+120 and $Hexagono_21/Hexagono.rect_position.y <=posicion_21.y+120 and $Hexagono_21/Hexagono.rect_position.y >=posicion_21.y-120:
			$Hexagono_21/Hexagono.rect_position = posicion_21
			teselar_21 = false
			$Hexagono_21/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_21/Hexagono.rect_position.direction_to(posicion_21)*rapidez
		if $Hexagono_21/Hexagono.rect_position.distance_to(posicion_21) > 10:
			$Hexagono_21/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_21/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_22
	if teselar_22 == true: 
		if $Hexagono_22/Hexagono.rect_position.x >= posicion_22.x-120 and$Hexagono_22/Hexagono.rect_position.x<= posicion_22.x+120 and $Hexagono_22/Hexagono.rect_position.y <=posicion_22.y+120 and $Hexagono_22/Hexagono.rect_position.y >=posicion_22.y-120:
			$Hexagono_22/Hexagono.rect_position = posicion_22
			teselar_22 = false
			$Hexagono_22/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_22/Hexagono.rect_position.direction_to(posicion_22)*rapidez
		if $Hexagono_22/Hexagono.rect_position.distance_to(posicion_22) > 10:
			$Hexagono_22/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_22/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_23
	if teselar_23 == true: 
		if $Hexagono_23/Hexagono.rect_position.x >= posicion_23.x-120 and$Hexagono_23/Hexagono.rect_position.x<= posicion_23.x+120 and $Hexagono_23/Hexagono.rect_position.y <=posicion_23.y+120 and $Hexagono_23/Hexagono.rect_position.y >=posicion_23.y-120:
			$Hexagono_23/Hexagono.rect_position = posicion_23
			teselar_23 = false
			$Hexagono_23/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_23/Hexagono.rect_position.direction_to(posicion_23)*rapidez
		if $Hexagono_23/Hexagono.rect_position.distance_to(posicion_23) > 10:
			$Hexagono_23/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_23/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_24
	if teselar_24 == true: 
		if $Hexagono_24/Hexagono.rect_position.x >= posicion_24.x-120 and$Hexagono_24/Hexagono.rect_position.x<= posicion_24.x+120 and $Hexagono_24/Hexagono.rect_position.y <=posicion_24.y+120 and $Hexagono_24/Hexagono.rect_position.y >=posicion_24.y-120:
			$Hexagono_24/Hexagono.rect_position = posicion_24
			teselar_24 = false
			$Hexagono_24/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_24/Hexagono.rect_position.direction_to(posicion_24)*rapidez
		if $Hexagono_24/Hexagono.rect_position.distance_to(posicion_24) > 10:
			$Hexagono_24/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_24/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_25
	if teselar_25 == true: 
		if $Hexagono_25/Hexagono.rect_position.x >= posicion_25.x-120 and$Hexagono_25/Hexagono.rect_position.x<= posicion_25.x+120 and $Hexagono_25/Hexagono.rect_position.y <=posicion_25.y+120 and $Hexagono_25/Hexagono.rect_position.y >=posicion_25.y-120:
			$Hexagono_25/Hexagono.rect_position = posicion_25
			teselar_25 = false
			$Hexagono_25/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_25/Hexagono.rect_position.direction_to(posicion_25)*rapidez
		if $Hexagono_25/Hexagono.rect_position.distance_to(posicion_25) > 10:
			$Hexagono_25/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_25/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_26
	if teselar_26 == true: 
		if $Hexagono_26/Hexagono.rect_position.x >= posicion_26.x-120 and$Hexagono_26/Hexagono.rect_position.x<= posicion_26.x+120 and $Hexagono_26/Hexagono.rect_position.y <=posicion_26.y+120 and $Hexagono_26/Hexagono.rect_position.y >=posicion_26.y-120:
			$Hexagono_26/Hexagono.rect_position = posicion_26
			teselar_26 = false
			$Hexagono_26/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_26/Hexagono.rect_position.direction_to(posicion_26)*rapidez
		if $Hexagono_26/Hexagono.rect_position.distance_to(posicion_26) > 10:
			$Hexagono_26/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_26/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_27
	if teselar_27 == true: 
		if $Hexagono_27/Hexagono.rect_position.x >= posicion_27.x-120 and$Hexagono_27/Hexagono.rect_position.x<= posicion_27.x+120 and $Hexagono_27/Hexagono.rect_position.y <=posicion_27.y+120 and $Hexagono_27/Hexagono.rect_position.y >=posicion_27.y-120:
			$Hexagono_27/Hexagono.rect_position = posicion_27
			teselar_27 = false
			$Hexagono_27/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_27/Hexagono.rect_position.direction_to(posicion_27)*rapidez
		if $Hexagono_27/Hexagono.rect_position.distance_to(posicion_27) > 10:
			$Hexagono_27/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_27/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_28
	if teselar_28 == true: 
		if $Hexagono_28/Hexagono.rect_position.x >= posicion_28.x-120 and$Hexagono_28/Hexagono.rect_position.x<= posicion_28.x+120 and $Hexagono_28/Hexagono.rect_position.y <=posicion_28.y+120 and $Hexagono_28/Hexagono.rect_position.y >=posicion_28.y-120:
			$Hexagono_28/Hexagono.rect_position = posicion_28
			teselar_28 = false
			$Hexagono_28/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_28/Hexagono.rect_position.direction_to(posicion_28)*rapidez
		if $Hexagono_28/Hexagono.rect_position.distance_to(posicion_28) > 10:
			$Hexagono_28/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_28/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_29
	if teselar_29 == true: 
		if $Hexagono_29/Hexagono.rect_position.x >= posicion_29.x-120 and$Hexagono_29/Hexagono.rect_position.x<= posicion_29.x+120 and $Hexagono_29/Hexagono.rect_position.y <=posicion_29.y+120 and $Hexagono_29/Hexagono.rect_position.y >=posicion_29.y-120:
			$Hexagono_29/Hexagono.rect_position = posicion_29
			teselar_29 = false
			$Hexagono_29/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_29/Hexagono.rect_position.direction_to(posicion_29)*rapidez
		if $Hexagono_29/Hexagono.rect_position.distance_to(posicion_29) > 10:
			$Hexagono_29/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_29/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_30
	if teselar_30 == true: 
		if $Hexagono_30/Hexagono.rect_position.x >= posicion_30.x-120 and$Hexagono_30/Hexagono.rect_position.x<= posicion_30.x+120 and $Hexagono_30/Hexagono.rect_position.y <=posicion_30.y+120 and $Hexagono_30/Hexagono.rect_position.y >=posicion_30.y-120:
			$Hexagono_30/Hexagono.rect_position = posicion_30
			teselar_30 = false
			$Hexagono_30/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_30/Hexagono.rect_position.direction_to(posicion_30)*rapidez
		if $Hexagono_30/Hexagono.rect_position.distance_to(posicion_30) > 10:
			$Hexagono_30/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_30/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_31
	if teselar_31 == true: 
		if $Hexagono_31/Hexagono.rect_position.x >= posicion_31.x-120 and$Hexagono_31/Hexagono.rect_position.x<= posicion_31.x+120 and $Hexagono_31/Hexagono.rect_position.y <=posicion_31.y+120 and $Hexagono_31/Hexagono.rect_position.y >=posicion_31.y-120:
			$Hexagono_31/Hexagono.rect_position = posicion_31
			teselar_31 = false
			$Hexagono_31/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_31/Hexagono.rect_position.direction_to(posicion_31)*rapidez
		if $Hexagono_31/Hexagono.rect_position.distance_to(posicion_31) > 10:
			$Hexagono_31/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_31/Hexagono.rect_position.y += int(velocidad.y*delta)
	############################################################################## H_32
	if teselar_32 == true: 
		if $Hexagono_32/Hexagono.rect_position.x >= posicion_32.x-120 and$Hexagono_32/Hexagono.rect_position.x<= posicion_32.x+120 and $Hexagono_32/Hexagono.rect_position.y <=posicion_32.y+120 and $Hexagono_32/Hexagono.rect_position.y >=posicion_32.y-120:
			$Hexagono_32/Hexagono.rect_position = posicion_32
			teselar_32 = false
			$Hexagono_32/Hexagono/Sprite.rotation_degrees = 0
		velocidad = $Hexagono_32/Hexagono.rect_position.direction_to(posicion_32)*rapidez
		if $Hexagono_32/Hexagono.rect_position.distance_to(posicion_32) > 10:
			$Hexagono_32/Hexagono.rect_position.x += int(velocidad.x*delta)
			$Hexagono_32/Hexagono.rect_position.y += int(velocidad.y*delta)
	pass




func _on_Apilar_pressed():
	if teselar_30 ==  false:
		$Seleccion.play(0.06)
		$Hexagono_/Hexagono.va_objetivo = true
		$Hexagono_2/Hexagono.va_objetivo = true
		$Hexagono_3/Hexagono.va_objetivo = true
		$Hexagono_4/Hexagono.va_objetivo = true
		$Hexagono_5/Hexagono.va_objetivo = true
		$Hexagono_6/Hexagono.va_objetivo = true
		$Hexagono_7/Hexagono.va_objetivo = true
		$Hexagono_8/Hexagono.va_objetivo = true
		$Hexagono_9/Hexagono.va_objetivo = true
		$Hexagono_10/Hexagono.va_objetivo = true
		$Hexagono_11/Hexagono.va_objetivo = true
		$Hexagono_12/Hexagono.va_objetivo = true
		$Hexagono_13/Hexagono.va_objetivo = true
		$Hexagono_14/Hexagono.va_objetivo = true
		$Hexagono_15/Hexagono.va_objetivo = true
		$Hexagono_16/Hexagono.va_objetivo = true
		$Hexagono_17/Hexagono.va_objetivo = true
		$Hexagono_18/Hexagono.va_objetivo = true
		$Hexagono_19/Hexagono.va_objetivo = true
		$Hexagono_20/Hexagono.va_objetivo = true
		$Hexagono_21/Hexagono.va_objetivo = true
		$Hexagono_22/Hexagono.va_objetivo = true
		$Hexagono_23/Hexagono.va_objetivo = true
		$Hexagono_24/Hexagono.va_objetivo = true
		$Hexagono_25/Hexagono.va_objetivo = true
		$Hexagono_26/Hexagono.va_objetivo = true
		$Hexagono_27/Hexagono.va_objetivo = true
		$Hexagono_28/Hexagono.va_objetivo = true
		$Hexagono_29/Hexagono.va_objetivo = true
		$Hexagono_30/Hexagono.va_objetivo = true
		$Hexagono_31/Hexagono.va_objetivo = true
		$Hexagono_32/Hexagono.va_objetivo = true
		$Hexagono_33/Hexagono.va_objetivo = true
		$Hexagono_34/Hexagono.va_objetivo = true
	pass # Replace with function body.


func _on_Teselar_pressed():
	if $Hexagono_30/Hexagono.va_objetivo == false:
		$Seleccion.play(0.06)
		teselar_ = true
		teselar_2 = true
		teselar_3 = true
		teselar_4 = true
		teselar_5 = true
		teselar_6 = true
		teselar_7 = true
		teselar_8 = true
		teselar_9 = true
		teselar_10 = true
		teselar_11 = true
		teselar_12 = true
		teselar_13 = true
		teselar_14 = true
		teselar_15 = true
		teselar_16 = true
		teselar_17 = true
		teselar_18 = true
		teselar_19 = true
		teselar_20 = true
		teselar_21 = true
		teselar_22 = true
		teselar_23 = true
		teselar_24 = true
		teselar_25 = true
		teselar_26 = true
		teselar_27 = true
		teselar_28 = true
		teselar_29 = true
		teselar_30 = true
		teselar_31 = true
		teselar_32 = true
	pass # Replace with function body.


func _on_Izq_pressed():
	$Seleccion.play(0.06)
	if figura_selecionada != null  and figura_selecionada.find_node("Hexagono").rota_der_figura == false:
		figura_selecionada.find_node("Hexagono").rota_izq_figura = true
	pass # Replace with function body.


func _on_Der_pressed():
	$Seleccion.play(0.06)
	if figura_selecionada != null and figura_selecionada.find_node("Hexagono").rota_izq_figura == false:
		figura_selecionada.find_node("Hexagono").rota_der_figura = true
	pass # Replace with function body.

