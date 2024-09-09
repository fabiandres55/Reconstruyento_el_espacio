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
var teselar_33 = false
var teselar_34 = false
var teselar_35 = false
var teselar_36 = false
###################################
var posicion_1 = Vector2(598.674,78.958)
var posicion_2 = Vector2(957.787,78.958)
var posicion_3 = Vector2(1316.601,79.045)
var posicion_4 = Vector2(496.769,182.447)
var posicion_5 = Vector2(856.194,182.447)
var posicion_6 = Vector2(1215.225,182.589)
var posicion_7 = Vector2(702.409,180.602)
var posicion_8 = Vector2(1061.068,180.684)
var posicion_9 = Vector2(1420.28,180.436)
var posicion_10 = Vector2(600.617,283.415)
var posicion_11 = Vector2(959.817,283.774)
var posicion_12 = Vector2(1318.85,283.716)
var posicion_13 = Vector2(496.873,540.759)
var posicion_14 = Vector2(496.861,899.646)
var posicion_15 = Vector2(600.36,1001.171)
var posicion_16 = Vector2(598.736,437.559)
var posicion_17 = Vector2(702.198,539.044)
var posicion_18 = Vector2(957.304,437.924)
var posicion_19 = Vector2(856.29,541.472)
var posicion_20 = Vector2(1060.931,539.293)
var posicion_21 = Vector2(1315.953,437.493)
var posicion_22 = Vector2(1214,541.43)
var posicion_23 = Vector2(1420.149,538.452)
var posicion_24 = Vector2(1319.356,642.817)
var posicion_25 = Vector2(960.241,642.662)
var posicion_26 = Vector2(600.615,642.382)
var posicion_27 = Vector2(598.011,796.351)
var posicion_28 = Vector2(701.64,897.977)
var posicion_29 = Vector2(957.103,796.228)
var posicion_30 = Vector2(855.589,899.975)
var posicion_31 = Vector2(959.332,1001.239)
var posicion_32 = Vector2(1317.995,1001.393)
var posicion_33 = Vector2(1419.671,898.144)
var posicion_34 = Vector2(1316.753,796.476)
var posicion_35 = Vector2(1215.38,900.144)
var posicion_36 = Vector2(1061.531,897.993)


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
		if $Triangulo_/Triangulo.rect_position.x >= posicion_1.x-120 and$Triangulo_/Triangulo.rect_position.x<= posicion_1.x+120 and $Triangulo_/Triangulo.rect_position.y <=posicion_1.y+120 and $Triangulo_/Triangulo.rect_position.y >=posicion_1.y-120:
			$Triangulo_/Triangulo.rect_position = posicion_1
			teselar_ = false
			$Triangulo_/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_/Triangulo.rect_position.direction_to(posicion_1)*rapidez
		if $Triangulo_/Triangulo.rect_position.distance_to(posicion_1) > 10:
			$Triangulo_/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_2
	if teselar_2 == true: 
		if $Triangulo_2/Triangulo.rect_position.x >= posicion_2.x-120 and$Triangulo_2/Triangulo.rect_position.x<= posicion_2.x+120 and $Triangulo_2/Triangulo.rect_position.y <=posicion_2.y+120 and $Triangulo_2/Triangulo.rect_position.y >=posicion_2.y-120:
			$Triangulo_2/Triangulo.rect_position = posicion_2
			teselar_2 = false
			$Triangulo_2/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_2/Triangulo.rect_position.direction_to(posicion_2)*rapidez
		if $Triangulo_2/Triangulo.rect_position.distance_to(posicion_2) > 10:
			$Triangulo_2/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_2/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_3
	if teselar_3 == true: 
		if $Triangulo_3/Triangulo.rect_position.x >= posicion_3.x-120 and$Triangulo_3/Triangulo.rect_position.x<= posicion_3.x+120 and $Triangulo_3/Triangulo.rect_position.y <=posicion_3.y+120 and $Triangulo_3/Triangulo.rect_position.y >=posicion_3.y-120:
			$Triangulo_3/Triangulo.rect_position = posicion_3
			teselar_3 = false
			$Triangulo_3/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_3/Triangulo.rect_position.direction_to(posicion_3)*rapidez
		if $Triangulo_3/Triangulo.rect_position.distance_to(posicion_3) > 10:
			$Triangulo_3/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_3/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_4
	if teselar_4 == true: 
		if $Triangulo_4/Triangulo.rect_position.x >= posicion_4.x-120 and$Triangulo_4/Triangulo.rect_position.x<= posicion_4.x+120 and $Triangulo_4/Triangulo.rect_position.y <=posicion_4.y+120 and $Triangulo_4/Triangulo.rect_position.y >=posicion_4.y-120:
			$Triangulo_4/Triangulo.rect_position = posicion_4
			teselar_4 = false
			$Triangulo_4/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_4/Triangulo.rect_position.direction_to(posicion_4)*rapidez
		if $Triangulo_4/Triangulo.rect_position.distance_to(posicion_4) > 10:
			$Triangulo_4/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_4/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_5
	if teselar_5 == true: 
		if $Triangulo_5/Triangulo.rect_position.x >= posicion_5.x-120 and$Triangulo_5/Triangulo.rect_position.x<= posicion_5.x+120 and $Triangulo_5/Triangulo.rect_position.y <=posicion_5.y+120 and $Triangulo_5/Triangulo.rect_position.y >=posicion_5.y-120:
			$Triangulo_5/Triangulo.rect_position = posicion_5
			teselar_5 = false
			$Triangulo_5/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_5/Triangulo.rect_position.direction_to(posicion_5)*rapidez
		if $Triangulo_5/Triangulo.rect_position.distance_to(posicion_5) > 10:
			$Triangulo_5/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_5/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_6
	if teselar_6 == true: 
		if $Triangulo_6/Triangulo.rect_position.x >= posicion_6.x-120 and$Triangulo_6/Triangulo.rect_position.x<= posicion_6.x+120 and $Triangulo_6/Triangulo.rect_position.y <=posicion_6.y+120 and $Triangulo_6/Triangulo.rect_position.y >=posicion_6.y-120:
			$Triangulo_6/Triangulo.rect_position = posicion_6
			teselar_6 = false
			$Triangulo_6/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_6/Triangulo.rect_position.direction_to(posicion_6)*rapidez
		if $Triangulo_6/Triangulo.rect_position.distance_to(posicion_6) > 10:
			$Triangulo_6/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_6/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_7
	if teselar_7 == true: 
		if $Triangulo_7/Triangulo.rect_position.x >= posicion_7.x-120 and$Triangulo_7/Triangulo.rect_position.x<= posicion_7.x+120 and $Triangulo_7/Triangulo.rect_position.y <=posicion_7.y+120 and $Triangulo_7/Triangulo.rect_position.y >=posicion_7.y-120:
			$Triangulo_7/Triangulo.rect_position = posicion_7
			teselar_7 = false
			$Triangulo_7/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_7/Triangulo.rect_position.direction_to(posicion_7)*rapidez
		if $Triangulo_7/Triangulo.rect_position.distance_to(posicion_7) > 10:
			$Triangulo_7/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_7/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_8
	if teselar_8 == true: 
		if $Triangulo_8/Triangulo.rect_position.x >= posicion_8.x-120 and$Triangulo_8/Triangulo.rect_position.x<= posicion_8.x+120 and $Triangulo_8/Triangulo.rect_position.y <=posicion_8.y+120 and $Triangulo_8/Triangulo.rect_position.y >=posicion_8.y-120:
			$Triangulo_8/Triangulo.rect_position = posicion_8
			teselar_8 = false
			$Triangulo_8/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_8/Triangulo.rect_position.direction_to(posicion_8)*rapidez
		if $Triangulo_8/Triangulo.rect_position.distance_to(posicion_8) > 10:
			$Triangulo_8/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_8/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_9
	if teselar_9 == true: 
		if $Triangulo_9/Triangulo.rect_position.x >= posicion_9.x-120 and$Triangulo_9/Triangulo.rect_position.x<= posicion_9.x+120 and $Triangulo_9/Triangulo.rect_position.y <=posicion_9.y+120 and $Triangulo_9/Triangulo.rect_position.y >=posicion_9.y-120:
			$Triangulo_9/Triangulo.rect_position = posicion_9
			teselar_9 = false
			$Triangulo_9/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_9/Triangulo.rect_position.direction_to(posicion_9)*rapidez
		if $Triangulo_9/Triangulo.rect_position.distance_to(posicion_9) > 10:
			$Triangulo_9/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_9/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_10
	if teselar_10 == true: 
		if $Triangulo_10/Triangulo.rect_position.x >= posicion_10.x-120 and$Triangulo_10/Triangulo.rect_position.x<= posicion_10.x+120 and $Triangulo_10/Triangulo.rect_position.y <=posicion_10.y+120 and $Triangulo_10/Triangulo.rect_position.y >=posicion_10.y-120:
			$Triangulo_10/Triangulo.rect_position = posicion_10
			teselar_10 = false
			$Triangulo_10/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_10/Triangulo.rect_position.direction_to(posicion_10)*rapidez
		if $Triangulo_10/Triangulo.rect_position.distance_to(posicion_10) > 10:
			$Triangulo_10/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_10/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_11
	if teselar_11 == true: 
		if $Triangulo_11/Triangulo.rect_position.x >= posicion_11.x-120 and$Triangulo_11/Triangulo.rect_position.x<= posicion_11.x+120 and $Triangulo_11/Triangulo.rect_position.y <=posicion_11.y+120 and $Triangulo_11/Triangulo.rect_position.y >=posicion_11.y-120:
			$Triangulo_11/Triangulo.rect_position = posicion_11
			teselar_11 = false
			$Triangulo_11/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_11/Triangulo.rect_position.direction_to(posicion_11)*rapidez
		if $Triangulo_11/Triangulo.rect_position.distance_to(posicion_11) > 10:
			$Triangulo_11/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_11/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_12
	if teselar_12 == true: 
		if $Triangulo_12/Triangulo.rect_position.x >= posicion_12.x-120 and$Triangulo_12/Triangulo.rect_position.x<= posicion_12.x+120 and $Triangulo_12/Triangulo.rect_position.y <=posicion_12.y+120 and $Triangulo_12/Triangulo.rect_position.y >=posicion_12.y-120:
			$Triangulo_12/Triangulo.rect_position = posicion_12
			teselar_12 = false
			$Triangulo_12/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_12/Triangulo.rect_position.direction_to(posicion_12)*rapidez
		if $Triangulo_12/Triangulo.rect_position.distance_to(posicion_12) > 10:
			$Triangulo_12/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_12/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_13
	if teselar_13 == true: 
		if $Triangulo_13/Triangulo.rect_position.x >= posicion_13.x-120 and$Triangulo_13/Triangulo.rect_position.x<= posicion_13.x+120 and $Triangulo_13/Triangulo.rect_position.y <=posicion_13.y+120 and $Triangulo_13/Triangulo.rect_position.y >=posicion_13.y-120:
			$Triangulo_13/Triangulo.rect_position = posicion_13
			teselar_13 = false
			$Triangulo_13/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_13/Triangulo.rect_position.direction_to(posicion_13)*rapidez
		if $Triangulo_13/Triangulo.rect_position.distance_to(posicion_13) > 10:
			$Triangulo_13/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_13/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_14
	if teselar_14 == true: 
		if $Triangulo_14/Triangulo.rect_position.x >= posicion_14.x-120 and$Triangulo_14/Triangulo.rect_position.x<= posicion_14.x+120 and $Triangulo_14/Triangulo.rect_position.y <=posicion_14.y+120 and $Triangulo_14/Triangulo.rect_position.y >=posicion_14.y-120:
			$Triangulo_14/Triangulo.rect_position = posicion_14
			teselar_14 = false
			$Triangulo_14/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_14/Triangulo.rect_position.direction_to(posicion_14)*rapidez
		if $Triangulo_14/Triangulo.rect_position.distance_to(posicion_14) > 10:
			$Triangulo_14/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_14/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_15
	if teselar_15 == true: 
		if $Triangulo_15/Triangulo.rect_position.x >= posicion_15.x-120 and$Triangulo_15/Triangulo.rect_position.x<= posicion_15.x+120 and $Triangulo_15/Triangulo.rect_position.y <=posicion_15.y+120 and $Triangulo_15/Triangulo.rect_position.y >=posicion_15.y-120:
			$Triangulo_15/Triangulo.rect_position = posicion_15
			teselar_15 = false
			$Triangulo_15/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_15/Triangulo.rect_position.direction_to(posicion_15)*rapidez
		if $Triangulo_15/Triangulo.rect_position.distance_to(posicion_15) > 10:
			$Triangulo_15/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_15/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_16
	if teselar_16 == true: 
		if $Triangulo_16/Triangulo.rect_position.x >= posicion_16.x-120 and$Triangulo_16/Triangulo.rect_position.x<= posicion_16.x+120 and $Triangulo_16/Triangulo.rect_position.y <=posicion_16.y+120 and $Triangulo_16/Triangulo.rect_position.y >=posicion_16.y-120:
			$Triangulo_16/Triangulo.rect_position = posicion_16
			teselar_16 = false
			$Triangulo_16/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_16/Triangulo.rect_position.direction_to(posicion_16)*rapidez
		if $Triangulo_16/Triangulo.rect_position.distance_to(posicion_16) > 10:
			$Triangulo_16/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_16/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_17
	if teselar_17 == true: 
		if $Triangulo_17/Triangulo.rect_position.x >= posicion_17.x-120 and$Triangulo_17/Triangulo.rect_position.x<= posicion_17.x+120 and $Triangulo_17/Triangulo.rect_position.y <=posicion_17.y+120 and $Triangulo_17/Triangulo.rect_position.y >=posicion_17.y-120:
			$Triangulo_17/Triangulo.rect_position = posicion_17
			teselar_17 = false
			$Triangulo_17/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_17/Triangulo.rect_position.direction_to(posicion_17)*rapidez
		if $Triangulo_17/Triangulo.rect_position.distance_to(posicion_17) > 10:
			$Triangulo_17/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_17/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_18
	if teselar_18 == true: 
		if $Triangulo_18/Triangulo.rect_position.x >= posicion_18.x-120 and$Triangulo_18/Triangulo.rect_position.x<= posicion_18.x+120 and $Triangulo_18/Triangulo.rect_position.y <=posicion_18.y+120 and $Triangulo_18/Triangulo.rect_position.y >=posicion_18.y-120:
			$Triangulo_18/Triangulo.rect_position = posicion_18
			teselar_18 = false
			$Triangulo_18/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_18/Triangulo.rect_position.direction_to(posicion_18)*rapidez
		if $Triangulo_18/Triangulo.rect_position.distance_to(posicion_18) > 10:
			$Triangulo_18/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_18/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_19
	if teselar_19 == true: 
		if $Triangulo_19/Triangulo.rect_position.x >= posicion_19.x-120 and$Triangulo_19/Triangulo.rect_position.x<= posicion_19.x+120 and $Triangulo_19/Triangulo.rect_position.y <=posicion_19.y+120 and $Triangulo_19/Triangulo.rect_position.y >=posicion_19.y-120:
			$Triangulo_19/Triangulo.rect_position = posicion_19
			teselar_19 = false
			$Triangulo_19/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_19/Triangulo.rect_position.direction_to(posicion_19)*rapidez
		if $Triangulo_19/Triangulo.rect_position.distance_to(posicion_19) > 10:
			$Triangulo_19/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_19/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_20
	if teselar_20 == true: 
		if $Triangulo_20/Triangulo.rect_position.x >= posicion_20.x-120 and$Triangulo_20/Triangulo.rect_position.x<= posicion_20.x+120 and $Triangulo_20/Triangulo.rect_position.y <=posicion_20.y+120 and $Triangulo_20/Triangulo.rect_position.y >=posicion_20.y-120:
			$Triangulo_20/Triangulo.rect_position = posicion_20
			teselar_20 = false
			$Triangulo_20/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_20/Triangulo.rect_position.direction_to(posicion_20)*rapidez
		if $Triangulo_20/Triangulo.rect_position.distance_to(posicion_20) > 10:
			$Triangulo_20/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_20/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_21
	if teselar_21 == true: 
		if $Triangulo_21/Triangulo.rect_position.x >= posicion_21.x-120 and$Triangulo_21/Triangulo.rect_position.x<= posicion_21.x+120 and $Triangulo_21/Triangulo.rect_position.y <=posicion_21.y+120 and $Triangulo_21/Triangulo.rect_position.y >=posicion_21.y-120:
			$Triangulo_21/Triangulo.rect_position = posicion_21
			teselar_21 = false
			$Triangulo_21/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_21/Triangulo.rect_position.direction_to(posicion_21)*rapidez
		if $Triangulo_21/Triangulo.rect_position.distance_to(posicion_21) > 10:
			$Triangulo_21/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_21/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_22
	if teselar_22 == true: 
		if $Triangulo_22/Triangulo.rect_position.x >= posicion_22.x-120 and$Triangulo_22/Triangulo.rect_position.x<= posicion_22.x+120 and $Triangulo_22/Triangulo.rect_position.y <=posicion_22.y+120 and $Triangulo_22/Triangulo.rect_position.y >=posicion_22.y-120:
			$Triangulo_22/Triangulo.rect_position = posicion_22
			teselar_22 = false
			$Triangulo_22/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_22/Triangulo.rect_position.direction_to(posicion_22)*rapidez
		if $Triangulo_22/Triangulo.rect_position.distance_to(posicion_22) > 10:
			$Triangulo_22/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_22/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_23
	if teselar_23 == true: 
		if $Triangulo_23/Triangulo.rect_position.x >= posicion_23.x-120 and$Triangulo_23/Triangulo.rect_position.x<= posicion_23.x+120 and $Triangulo_23/Triangulo.rect_position.y <=posicion_23.y+120 and $Triangulo_23/Triangulo.rect_position.y >=posicion_23.y-120:
			$Triangulo_23/Triangulo.rect_position = posicion_23
			teselar_23 = false
			$Triangulo_23/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_23/Triangulo.rect_position.direction_to(posicion_23)*rapidez
		if $Triangulo_23/Triangulo.rect_position.distance_to(posicion_23) > 10:
			$Triangulo_23/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_23/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_24
	if teselar_24 == true: 
		if $Triangulo_24/Triangulo.rect_position.x >= posicion_24.x-120 and$Triangulo_24/Triangulo.rect_position.x<= posicion_24.x+120 and $Triangulo_24/Triangulo.rect_position.y <=posicion_24.y+120 and $Triangulo_24/Triangulo.rect_position.y >=posicion_24.y-120:
			$Triangulo_24/Triangulo.rect_position = posicion_24
			teselar_24 = false
			$Triangulo_24/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_24/Triangulo.rect_position.direction_to(posicion_24)*rapidez
		if $Triangulo_24/Triangulo.rect_position.distance_to(posicion_24) > 10:
			$Triangulo_24/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_24/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_25
	if teselar_25 == true: 
		if $Triangulo_25/Triangulo.rect_position.x >= posicion_25.x-120 and$Triangulo_25/Triangulo.rect_position.x<= posicion_25.x+120 and $Triangulo_25/Triangulo.rect_position.y <=posicion_25.y+120 and $Triangulo_25/Triangulo.rect_position.y >=posicion_25.y-120:
			$Triangulo_25/Triangulo.rect_position = posicion_25
			teselar_25 = false
			$Triangulo_25/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_25/Triangulo.rect_position.direction_to(posicion_25)*rapidez
		if $Triangulo_25/Triangulo.rect_position.distance_to(posicion_25) > 10:
			$Triangulo_25/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_25/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_26
	if teselar_26 == true: 
		if $Triangulo_26/Triangulo.rect_position.x >= posicion_26.x-120 and$Triangulo_26/Triangulo.rect_position.x<= posicion_26.x+120 and $Triangulo_26/Triangulo.rect_position.y <=posicion_26.y+120 and $Triangulo_26/Triangulo.rect_position.y >=posicion_26.y-120:
			$Triangulo_26/Triangulo.rect_position = posicion_26
			teselar_26 = false
			$Triangulo_26/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_26/Triangulo.rect_position.direction_to(posicion_26)*rapidez
		if $Triangulo_26/Triangulo.rect_position.distance_to(posicion_26) > 10:
			$Triangulo_26/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_26/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_27
	if teselar_27 == true: 
		if $Triangulo_27/Triangulo.rect_position.x >= posicion_27.x-120 and$Triangulo_27/Triangulo.rect_position.x<= posicion_27.x+120 and $Triangulo_27/Triangulo.rect_position.y <=posicion_27.y+120 and $Triangulo_27/Triangulo.rect_position.y >=posicion_27.y-120:
			$Triangulo_27/Triangulo.rect_position = posicion_27
			teselar_27 = false
			$Triangulo_27/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_27/Triangulo.rect_position.direction_to(posicion_27)*rapidez
		if $Triangulo_27/Triangulo.rect_position.distance_to(posicion_27) > 10:
			$Triangulo_27/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_27/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_28
	if teselar_28 == true: 
		if $Triangulo_28/Triangulo.rect_position.x >= posicion_28.x-120 and$Triangulo_28/Triangulo.rect_position.x<= posicion_28.x+120 and $Triangulo_28/Triangulo.rect_position.y <=posicion_28.y+120 and $Triangulo_28/Triangulo.rect_position.y >=posicion_28.y-120:
			$Triangulo_28/Triangulo.rect_position = posicion_28
			teselar_28 = false
			$Triangulo_28/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_28/Triangulo.rect_position.direction_to(posicion_28)*rapidez
		if $Triangulo_28/Triangulo.rect_position.distance_to(posicion_28) > 10:
			$Triangulo_28/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_28/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_29
	if teselar_29 == true: 
		if $Triangulo_29/Triangulo.rect_position.x >= posicion_29.x-120 and$Triangulo_29/Triangulo.rect_position.x<= posicion_29.x+120 and $Triangulo_29/Triangulo.rect_position.y <=posicion_29.y+120 and $Triangulo_29/Triangulo.rect_position.y >=posicion_29.y-120:
			$Triangulo_29/Triangulo.rect_position = posicion_29
			teselar_29 = false
			$Triangulo_29/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_29/Triangulo.rect_position.direction_to(posicion_29)*rapidez
		if $Triangulo_29/Triangulo.rect_position.distance_to(posicion_29) > 10:
			$Triangulo_29/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_29/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_30
	if teselar_30 == true: 
		if $Triangulo_30/Triangulo.rect_position.x >= posicion_30.x-120 and$Triangulo_30/Triangulo.rect_position.x<= posicion_30.x+120 and $Triangulo_30/Triangulo.rect_position.y <=posicion_30.y+120 and $Triangulo_30/Triangulo.rect_position.y >=posicion_30.y-120:
			$Triangulo_30/Triangulo.rect_position = posicion_30
			teselar_30 = false
			$Triangulo_30/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_30/Triangulo.rect_position.direction_to(posicion_30)*rapidez
		if $Triangulo_30/Triangulo.rect_position.distance_to(posicion_30) > 10:
			$Triangulo_30/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_30/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_31
	if teselar_31 == true: 
		if $Triangulo_31/Triangulo.rect_position.x >= posicion_31.x-120 and$Triangulo_31/Triangulo.rect_position.x<= posicion_31.x+120 and $Triangulo_31/Triangulo.rect_position.y <=posicion_31.y+120 and $Triangulo_31/Triangulo.rect_position.y >=posicion_31.y-120:
			$Triangulo_31/Triangulo.rect_position = posicion_31
			teselar_31 = false
			$Triangulo_31/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_31/Triangulo.rect_position.direction_to(posicion_31)*rapidez
		if $Triangulo_31/Triangulo.rect_position.distance_to(posicion_31) > 10:
			$Triangulo_31/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_31/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_32
	if teselar_32 == true: 
		if $Triangulo_32/Triangulo.rect_position.x >= posicion_32.x-120 and$Triangulo_32/Triangulo.rect_position.x<= posicion_32.x+120 and $Triangulo_32/Triangulo.rect_position.y <=posicion_32.y+120 and $Triangulo_32/Triangulo.rect_position.y >=posicion_32.y-120:
			$Triangulo_32/Triangulo.rect_position = posicion_32
			teselar_32 = false
			$Triangulo_32/Triangulo/Sprite.rotation_degrees = 180
		velocidad = $Triangulo_32/Triangulo.rect_position.direction_to(posicion_32)*rapidez
		if $Triangulo_32/Triangulo.rect_position.distance_to(posicion_32) > 10:
			$Triangulo_32/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_32/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_33
	if teselar_33 == true: 
		if $Triangulo_33/Triangulo.rect_position.x >= posicion_33.x-120 and$Triangulo_33/Triangulo.rect_position.x<= posicion_33.x+120 and $Triangulo_33/Triangulo.rect_position.y <=posicion_33.y+120 and $Triangulo_33/Triangulo.rect_position.y >=posicion_33.y-120:
			$Triangulo_33/Triangulo.rect_position = posicion_33
			teselar_33 = false
			$Triangulo_33/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_33/Triangulo.rect_position.direction_to(posicion_33)*rapidez
		if $Triangulo_33/Triangulo.rect_position.distance_to(posicion_33) > 10:
			$Triangulo_33/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_33/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_34
	if teselar_34 == true: 
		if $Triangulo_34/Triangulo.rect_position.x >= posicion_34.x-120 and$Triangulo_34/Triangulo.rect_position.x<= posicion_34.x+120 and $Triangulo_34/Triangulo.rect_position.y <=posicion_34.y+120 and $Triangulo_34/Triangulo.rect_position.y >=posicion_34.y-120:
			$Triangulo_34/Triangulo.rect_position = posicion_34
			teselar_34 = false
			$Triangulo_34/Triangulo/Sprite.rotation_degrees = 0
		velocidad = $Triangulo_34/Triangulo.rect_position.direction_to(posicion_34)*rapidez
		if $Triangulo_34/Triangulo.rect_position.distance_to(posicion_34) > 10:
			$Triangulo_34/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_34/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_35
	if teselar_35 == true: 
		if $Triangulo_35/Triangulo.rect_position.x >= posicion_35.x-120 and$Triangulo_35/Triangulo.rect_position.x<= posicion_35.x+120 and $Triangulo_35/Triangulo.rect_position.y <=posicion_35.y+120 and $Triangulo_35/Triangulo.rect_position.y >=posicion_35.y-120:
			$Triangulo_35/Triangulo.rect_position = posicion_35
			teselar_35 = false
			$Triangulo_35/Triangulo/Sprite.rotation_degrees = -90
		velocidad = $Triangulo_35/Triangulo.rect_position.direction_to(posicion_35)*rapidez
		if $Triangulo_35/Triangulo.rect_position.distance_to(posicion_35) > 10:
			$Triangulo_35/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_35/Triangulo.rect_position.y += int(velocidad.y*delta)
	################################################################## T_36
	if teselar_36 == true: 
		if $Triangulo_36/Triangulo.rect_position.x >= posicion_36.x-120 and$Triangulo_36/Triangulo.rect_position.x<= posicion_36.x+120 and $Triangulo_36/Triangulo.rect_position.y <=posicion_36.y+120 and $Triangulo_36/Triangulo.rect_position.y >=posicion_36.y-120:
			$Triangulo_36/Triangulo.rect_position = posicion_36
			teselar_36 = false
			$Triangulo_36/Triangulo/Sprite.rotation_degrees = 90
		velocidad = $Triangulo_36/Triangulo.rect_position.direction_to(posicion_36)*rapidez
		if $Triangulo_36/Triangulo.rect_position.distance_to(posicion_36) > 10:
			$Triangulo_36/Triangulo.rect_position.x += int(velocidad.x*delta)
			$Triangulo_36/Triangulo.rect_position.y += int(velocidad.y*delta)
	
	pass

func _on_girar_der_pressed():
	$Seleccion.play(0.06)
	if figura_selecionada != null and figura_selecionada.find_node("Triangulo").rota_izq_figura == false:
		figura_selecionada.find_node("Triangulo").rota_der_figura = true
	pass # Replace with function body.


func _on_girar_izq_pressed():
	$Seleccion.play(0.06)
	if figura_selecionada != null  and figura_selecionada.find_node("Triangulo").rota_der_figura == false:
		figura_selecionada.find_node("Triangulo").rota_izq_figura = true
	pass # Replace with function body.




func _on_Apilar_pressed():
	if teselar_9 ==  false and teselar_33 == false and teselar_32 == false:
		$Seleccion.play(0.06)
		$Triangulo_/Triangulo.va_objetivo = true
		$Triangulo_2/Triangulo.va_objetivo = true
		$Triangulo_3/Triangulo.va_objetivo = true
		$Triangulo_4/Triangulo.va_objetivo = true
		$Triangulo_5/Triangulo.va_objetivo = true
		$Triangulo_6/Triangulo.va_objetivo = true
		$Triangulo_7/Triangulo.va_objetivo = true
		$Triangulo_8/Triangulo.va_objetivo = true
		$Triangulo_9/Triangulo.va_objetivo = true
		$Triangulo_10/Triangulo.va_objetivo = true
		$Triangulo_11/Triangulo.va_objetivo = true
		$Triangulo_12/Triangulo.va_objetivo = true
		$Triangulo_13/Triangulo.va_objetivo = true
		$Triangulo_14/Triangulo.va_objetivo = true
		$Triangulo_15/Triangulo.va_objetivo = true
		$Triangulo_16/Triangulo.va_objetivo = true
		$Triangulo_17/Triangulo.va_objetivo = true
		$Triangulo_18/Triangulo.va_objetivo = true
		$Triangulo_19/Triangulo.va_objetivo = true
		$Triangulo_20/Triangulo.va_objetivo = true
		$Triangulo_21/Triangulo.va_objetivo = true
		$Triangulo_22/Triangulo.va_objetivo = true
		$Triangulo_23/Triangulo.va_objetivo = true
		$Triangulo_24/Triangulo.va_objetivo = true
		$Triangulo_25/Triangulo.va_objetivo = true
		$Triangulo_26/Triangulo.va_objetivo = true
		$Triangulo_27/Triangulo.va_objetivo = true
		$Triangulo_28/Triangulo.va_objetivo = true
		$Triangulo_29/Triangulo.va_objetivo = true
		$Triangulo_30/Triangulo.va_objetivo = true
		$Triangulo_31/Triangulo.va_objetivo = true
		$Triangulo_32/Triangulo.va_objetivo = true
		$Triangulo_33/Triangulo.va_objetivo = true
		$Triangulo_34/Triangulo.va_objetivo = true
		$Triangulo_35/Triangulo.va_objetivo = true
		$Triangulo_36/Triangulo.va_objetivo = true
		$Triangulo_37/Triangulo.va_objetivo = true
		$Triangulo_38/Triangulo.va_objetivo = true
	pass # Replace with function body.


func _on_Teselar_pressed():
	if $Triangulo_9/Triangulo.va_objetivo == false and $Triangulo_33/Triangulo.va_objetivo == false and $Triangulo_32/Triangulo.va_objetivo == false : 
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
		teselar_33 = true
		teselar_34 = true
		teselar_35 = true
		teselar_36 = true
	pass # Replace with function body.
