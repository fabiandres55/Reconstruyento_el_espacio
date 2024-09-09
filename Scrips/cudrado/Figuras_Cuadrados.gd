extends Control

var figura_selecionada = null
var figura_entro_teselado = false
var puerta_bajar_capa = false
######################### variables de movimiento de teselado:
var velocidad = Vector2()
var rapidez = 3500
var estamos_teselado = false
########################posiciones de teselado:
var posicion_ = Vector2(528.373,107.713)
var posicion_2 = Vector2(744.434,107.713)
var posicion_3 = Vector2(960.257,107.713)
var posicion_4 = Vector2(1176.06,107.713)
var posicion_5 = Vector2(1391.81,107.713)
var posicion_6 = Vector2(528.373,323.9)
var posicion_7 = Vector2(744.434,323.9)
var posicion_8 = Vector2(960.257,323.9)
var posicion_9 = Vector2(1176.06,323.9)
var posicion_10 = Vector2(1391.81,323.9)
var posicion_11 = Vector2(528.373,539.9)
var posicion_12 = Vector2(744.434,539.9)
var posicion_13 = Vector2(960.257,539.9)
var posicion_14 = Vector2(1176.06,539.9)
var posicion_15 = Vector2(1391.81,539.9)
var posicion_16 = Vector2(528.373,755.9)
var posicion_17 = Vector2(744.434,755.9)
var posicion_18 = Vector2(960.257,755.9)
var posicion_19 = Vector2(1176.06,755.9)
var posicion_20 = Vector2(1391.81,755.9)
var posicion_21 = Vector2(528.373,971.9)
var posicion_22 = Vector2(744.434,971.9)
var posicion_23 = Vector2(960.257,971.9)
var posicion_24 = Vector2(1176.06,971.9)
var posicion_25 = Vector2(1391.81,971.9) 
############################# variables  logicas de teselado:

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

################ variable de cambiar capa en apliado 
var capa_up_apilado = false
################ variable de cambiar capa en teselado
var capa_down_teselado = false


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
	if get_node("/root/Multi_verificacion").vibrar == true:
		pass
	################### verificacion_teselado
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
	pass 

func _physics_process(delta):
	############################## teselar 
	if teselar_ == true: 
		if $Cuadrado_/Cuadrado.rect_position.x >= posicion_.x-120 and $Cuadrado_/Cuadrado.rect_position.x<= posicion_.x+120 and $Cuadrado_/Cuadrado.rect_position.y <=posicion_.y+120 and $Cuadrado_/Cuadrado.rect_position.y >=posicion_.y-120:
			$Cuadrado_/Cuadrado.rect_position = posicion_
			teselar_ = false
		velocidad = $Cuadrado_/Cuadrado.rect_position.direction_to(posicion_)*rapidez
		if $Cuadrado_/Cuadrado.rect_position.distance_to(posicion_) > 10:
			$Cuadrado_/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_2
	if teselar_2 == true: 
		if $Cuadrado_2/Cuadrado.rect_position.x >= posicion_2.x-120 and $Cuadrado_2/Cuadrado.rect_position.x<= posicion_2.x+120 and $Cuadrado_2/Cuadrado.rect_position.y <=posicion_2.y+120 and $Cuadrado_2/Cuadrado.rect_position.y >=posicion_2.y-120:
			$Cuadrado_2/Cuadrado.rect_position = posicion_2
			teselar_2 = false
		velocidad = $Cuadrado_2/Cuadrado.rect_position.direction_to(posicion_2)*rapidez
		if $Cuadrado_2/Cuadrado.rect_position.distance_to(posicion_2) > 10:
			$Cuadrado_2/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_2/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_3
	if teselar_3 == true: 
		if $Cuadrado_3/Cuadrado.rect_position.x >= posicion_3.x-120 and $Cuadrado_3/Cuadrado.rect_position.x<= posicion_3.x+120 and $Cuadrado_3/Cuadrado.rect_position.y <=posicion_3.y+120 and $Cuadrado_3/Cuadrado.rect_position.y >=posicion_3.y-120:
			$Cuadrado_3/Cuadrado.rect_position = posicion_3
			teselar_3 = false
		velocidad = $Cuadrado_3/Cuadrado.rect_position.direction_to(posicion_3)*rapidez
		if $Cuadrado_3/Cuadrado.rect_position.distance_to(posicion_3) > 10:
			$Cuadrado_3/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_3/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_4
	if teselar_4 == true: 
		if $Cuadrado_4/Cuadrado.rect_position.x >= posicion_4.x-120 and $Cuadrado_4/Cuadrado.rect_position.x<= posicion_4.x+120 and $Cuadrado_4/Cuadrado.rect_position.y <=posicion_4.y+120 and $Cuadrado_4/Cuadrado.rect_position.y >=posicion_4.y-120:
			$Cuadrado_4/Cuadrado.rect_position = posicion_4
			teselar_4 = false
		velocidad = $Cuadrado_4/Cuadrado.rect_position.direction_to(posicion_4)*rapidez
		if $Cuadrado_4/Cuadrado.rect_position.distance_to(posicion_4) > 10:
			$Cuadrado_4/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_4/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_5
	if teselar_5 == true: 
		if $Cuadrado_5/Cuadrado.rect_position.x >= posicion_5.x-120 and $Cuadrado_5/Cuadrado.rect_position.x<= posicion_5.x+120 and $Cuadrado_5/Cuadrado.rect_position.y <=posicion_5.y+120 and $Cuadrado_5/Cuadrado.rect_position.y >=posicion_5.y-120:
			$Cuadrado_5/Cuadrado.rect_position = posicion_5
			teselar_5 = false
		velocidad = $Cuadrado_5/Cuadrado.rect_position.direction_to(posicion_5)*rapidez
		if $Cuadrado_5/Cuadrado.rect_position.distance_to(posicion_5) > 10:
			$Cuadrado_5/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_5/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_6
	if teselar_6 == true: 
		if $Cuadrado_6/Cuadrado.rect_position.x >= posicion_6.x-120 and $Cuadrado_6/Cuadrado.rect_position.x<= posicion_6.x+120 and $Cuadrado_6/Cuadrado.rect_position.y <=posicion_6.y+120 and $Cuadrado_6/Cuadrado.rect_position.y >=posicion_6.y-120:
			$Cuadrado_6/Cuadrado.rect_position = posicion_6
			teselar_6 = false
		velocidad = $Cuadrado_6/Cuadrado.rect_position.direction_to(posicion_6)*rapidez
		if $Cuadrado_6/Cuadrado.rect_position.distance_to(posicion_6) > 10:
			$Cuadrado_6/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_6/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_7
	if teselar_7 == true: 
		if $Cuadrado_7/Cuadrado.rect_position.x >= posicion_7.x-120 and $Cuadrado_7/Cuadrado.rect_position.x<= posicion_7.x+120 and $Cuadrado_7/Cuadrado.rect_position.y <=posicion_7.y+120 and $Cuadrado_7/Cuadrado.rect_position.y >=posicion_7.y-120:
			$Cuadrado_7/Cuadrado.rect_position = posicion_7
			teselar_7 = false
		velocidad = $Cuadrado_7/Cuadrado.rect_position.direction_to(posicion_7)*rapidez
		if $Cuadrado_7/Cuadrado.rect_position.distance_to(posicion_3) > 10:
			$Cuadrado_7/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_7/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_8
	if teselar_8 == true: 
		if $Cuadrado_8/Cuadrado.rect_position.x >= posicion_8.x-120 and $Cuadrado_8/Cuadrado.rect_position.x<= posicion_8.x+120 and $Cuadrado_8/Cuadrado.rect_position.y <=posicion_8.y+120 and $Cuadrado_8/Cuadrado.rect_position.y >=posicion_8.y-120:
			$Cuadrado_8/Cuadrado.rect_position = posicion_8
			teselar_8 = false
		velocidad = $Cuadrado_8/Cuadrado.rect_position.direction_to(posicion_8)*rapidez
		if $Cuadrado_8/Cuadrado.rect_position.distance_to(posicion_8) > 10:
			$Cuadrado_8/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_8/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_9
	if teselar_9 == true: 
		if $Cuadrado_9/Cuadrado.rect_position.x >= posicion_9.x-120 and $Cuadrado_9/Cuadrado.rect_position.x<= posicion_9.x+120 and $Cuadrado_9/Cuadrado.rect_position.y <=posicion_9.y+120 and $Cuadrado_9/Cuadrado.rect_position.y >=posicion_9.y-120:
			$Cuadrado_9/Cuadrado.rect_position = posicion_9
			teselar_9 = false
		velocidad = $Cuadrado_9/Cuadrado.rect_position.direction_to(posicion_9)*rapidez
		if $Cuadrado_9/Cuadrado.rect_position.distance_to(posicion_9) > 10:
			$Cuadrado_9/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_9/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_10
	if teselar_10 == true: 
		if $Cuadrado_10/Cuadrado.rect_position.x >= posicion_10.x-120 and $Cuadrado_10/Cuadrado.rect_position.x<= posicion_10.x+120 and $Cuadrado_10/Cuadrado.rect_position.y <=posicion_10.y+120 and $Cuadrado_10/Cuadrado.rect_position.y >=posicion_10.y-120:
			$Cuadrado_10/Cuadrado.rect_position = posicion_10
			teselar_10 = false
		velocidad = $Cuadrado_10/Cuadrado.rect_position.direction_to(posicion_10)*rapidez
		if $Cuadrado_10/Cuadrado.rect_position.distance_to(posicion_10) > 10:
			$Cuadrado_10/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_10/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_11
	if teselar_11 == true: 
		if $Cuadrado_11/Cuadrado.rect_position.x >= posicion_11.x-120 and $Cuadrado_11/Cuadrado.rect_position.x<= posicion_11.x+120 and $Cuadrado_11/Cuadrado.rect_position.y <=posicion_11.y+120 and $Cuadrado_11/Cuadrado.rect_position.y >=posicion_11.y-120:
			$Cuadrado_11/Cuadrado.rect_position = posicion_11
			teselar_11 = false
		velocidad = $Cuadrado_11/Cuadrado.rect_position.direction_to(posicion_11)*rapidez
		if $Cuadrado_11/Cuadrado.rect_position.distance_to(posicion_11) > 10:
			$Cuadrado_11/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_11/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_12
	if teselar_12 == true: 
		if $Cuadrado_12/Cuadrado.rect_position.x >= posicion_12.x-120 and $Cuadrado_12/Cuadrado.rect_position.x<= posicion_12.x+120 and $Cuadrado_12/Cuadrado.rect_position.y <=posicion_12.y+120 and $Cuadrado_12/Cuadrado.rect_position.y >=posicion_12.y-120:
			$Cuadrado_12/Cuadrado.rect_position = posicion_12
			teselar_12 = false
		velocidad = $Cuadrado_12/Cuadrado.rect_position.direction_to(posicion_12)*rapidez
		if $Cuadrado_12/Cuadrado.rect_position.distance_to(posicion_12) > 10:
			$Cuadrado_12/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_12/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_13
	if teselar_13 == true: 
		if $Cuadrado_13/Cuadrado.rect_position.x >= posicion_13.x-120 and $Cuadrado_13/Cuadrado.rect_position.x<= posicion_13.x+120 and $Cuadrado_13/Cuadrado.rect_position.y <=posicion_13.y+120 and $Cuadrado_13/Cuadrado.rect_position.y >=posicion_10.y-120:
			$Cuadrado_13/Cuadrado.rect_position = posicion_13
			teselar_13 = false
		velocidad = $Cuadrado_13/Cuadrado.rect_position.direction_to(posicion_13)*rapidez
		if $Cuadrado_13/Cuadrado.rect_position.distance_to(posicion_13) > 10:
			$Cuadrado_13/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_13/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_14
	if teselar_14 == true: 
		if $Cuadrado_14/Cuadrado.rect_position.x >= posicion_14.x-120 and $Cuadrado_14/Cuadrado.rect_position.x<= posicion_14.x+120 and $Cuadrado_14/Cuadrado.rect_position.y <=posicion_14.y+120 and $Cuadrado_14/Cuadrado.rect_position.y >=posicion_14.y-120:
			$Cuadrado_14/Cuadrado.rect_position = posicion_14
			teselar_14 = false
		velocidad = $Cuadrado_14/Cuadrado.rect_position.direction_to(posicion_14)*rapidez
		if $Cuadrado_14/Cuadrado.rect_position.distance_to(posicion_14) > 10:
			$Cuadrado_14/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_14/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_15
	if teselar_15 == true: 
		if $Cuadrado_15/Cuadrado.rect_position.x >= posicion_15.x-120 and $Cuadrado_15/Cuadrado.rect_position.x<= posicion_15.x+120 and $Cuadrado_15/Cuadrado.rect_position.y <=posicion_15.y+120 and $Cuadrado_15/Cuadrado.rect_position.y >=posicion_15.y-120:
			$Cuadrado_15/Cuadrado.rect_position = posicion_15
			teselar_15 = false
		velocidad = $Cuadrado_15/Cuadrado.rect_position.direction_to(posicion_15)*rapidez
		if $Cuadrado_15/Cuadrado.rect_position.distance_to(posicion_10) > 10:
			$Cuadrado_15/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_15/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_16
	if teselar_16 == true: 
		if $Cuadrado_16/Cuadrado.rect_position.x >= posicion_16.x-120 and $Cuadrado_16/Cuadrado.rect_position.x<= posicion_16.x+120 and $Cuadrado_16/Cuadrado.rect_position.y <=posicion_16.y+120 and $Cuadrado_16/Cuadrado.rect_position.y >=posicion_16.y-120:
			$Cuadrado_16/Cuadrado.rect_position = posicion_16
			teselar_16 = false
		velocidad = $Cuadrado_16/Cuadrado.rect_position.direction_to(posicion_16)*rapidez
		if $Cuadrado_16/Cuadrado.rect_position.distance_to(posicion_16) > 10:
			$Cuadrado_16/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_16/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_17
	if teselar_17 == true: 
		if $Cuadrado_17/Cuadrado.rect_position.x >= posicion_17.x-120 and $Cuadrado_17/Cuadrado.rect_position.x<= posicion_17.x+120 and $Cuadrado_17/Cuadrado.rect_position.y <=posicion_17.y+120 and $Cuadrado_17/Cuadrado.rect_position.y >=posicion_17.y-120:
			$Cuadrado_17/Cuadrado.rect_position = posicion_17
			teselar_17 = false
		velocidad = $Cuadrado_17/Cuadrado.rect_position.direction_to(posicion_17)*rapidez
		if $Cuadrado_17/Cuadrado.rect_position.distance_to(posicion_17) > 10:
			$Cuadrado_17/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_17/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_18
	if teselar_18 == true: 
		if $Cuadrado_18/Cuadrado.rect_position.x >= posicion_18.x-120 and $Cuadrado_18/Cuadrado.rect_position.x<= posicion_18.x+120 and $Cuadrado_18/Cuadrado.rect_position.y <=posicion_18.y+120 and $Cuadrado_18/Cuadrado.rect_position.y >=posicion_18.y-120:
			$Cuadrado_18/Cuadrado.rect_position = posicion_18
			teselar_18 = false
		velocidad = $Cuadrado_18/Cuadrado.rect_position.direction_to(posicion_18)*rapidez
		if $Cuadrado_18/Cuadrado.rect_position.distance_to(posicion_10) > 10:
			$Cuadrado_18/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_18/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_19
	if teselar_19 == true: 
		if $Cuadrado_19/Cuadrado.rect_position.x >= posicion_19.x-120 and $Cuadrado_19/Cuadrado.rect_position.x<= posicion_19.x+120 and $Cuadrado_19/Cuadrado.rect_position.y <=posicion_19.y+120 and $Cuadrado_19/Cuadrado.rect_position.y >=posicion_19.y-120:
			$Cuadrado_19/Cuadrado.rect_position = posicion_19
			teselar_19 = false
		velocidad = $Cuadrado_19/Cuadrado.rect_position.direction_to(posicion_19)*rapidez
		if $Cuadrado_19/Cuadrado.rect_position.distance_to(posicion_19) > 10:
			$Cuadrado_19/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_19/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_20
	if teselar_20 == true: 
		if $Cuadrado_20/Cuadrado.rect_position.x >= posicion_20.x-120 and $Cuadrado_20/Cuadrado.rect_position.x<= posicion_20.x+120 and $Cuadrado_20/Cuadrado.rect_position.y <=posicion_20.y+120 and $Cuadrado_20/Cuadrado.rect_position.y >=posicion_20.y-120:
			$Cuadrado_20/Cuadrado.rect_position = posicion_20
			teselar_20 = false
		velocidad = $Cuadrado_20/Cuadrado.rect_position.direction_to(posicion_20)*rapidez
		if $Cuadrado_20/Cuadrado.rect_position.distance_to(posicion_20) > 10:
			$Cuadrado_20/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_20/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_21
	if teselar_21 == true: 
		if $Cuadrado_21/Cuadrado.rect_position.x >= posicion_21.x-120 and $Cuadrado_21/Cuadrado.rect_position.x<= posicion_21.x+120 and $Cuadrado_21/Cuadrado.rect_position.y <=posicion_21.y+120 and $Cuadrado_21/Cuadrado.rect_position.y >=posicion_21.y-120:
			$Cuadrado_21/Cuadrado.rect_position = posicion_21
			teselar_21 = false
		velocidad = $Cuadrado_21/Cuadrado.rect_position.direction_to(posicion_21)*rapidez
		if $Cuadrado_21/Cuadrado.rect_position.distance_to(posicion_21) > 10:
			$Cuadrado_21/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_21/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_22
	if teselar_22 == true: 
		if $Cuadrado_22/Cuadrado.rect_position.x >= posicion_22.x-120 and $Cuadrado_22/Cuadrado.rect_position.x<= posicion_22.x+120 and $Cuadrado_22/Cuadrado.rect_position.y <=posicion_22.y+120 and $Cuadrado_22/Cuadrado.rect_position.y >=posicion_22.y-120:
			$Cuadrado_22/Cuadrado.rect_position = posicion_22
			teselar_22 = false
		velocidad = $Cuadrado_22/Cuadrado.rect_position.direction_to(posicion_22)*rapidez
		if $Cuadrado_22/Cuadrado.rect_position.distance_to(posicion_22) > 10:
			$Cuadrado_22/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_22/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_23
	if teselar_23 == true: 
		if $Cuadrado_23/Cuadrado.rect_position.x >= posicion_23.x-120 and $Cuadrado_23/Cuadrado.rect_position.x<= posicion_23.x+120 and $Cuadrado_23/Cuadrado.rect_position.y <=posicion_23.y+120 and $Cuadrado_23/Cuadrado.rect_position.y >=posicion_23.y-120:
			$Cuadrado_23/Cuadrado.rect_position = posicion_23
			teselar_23 = false
		velocidad = $Cuadrado_23/Cuadrado.rect_position.direction_to(posicion_23)*rapidez
		if $Cuadrado_23/Cuadrado.rect_position.distance_to(posicion_23) > 10:
			$Cuadrado_23/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_23/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_24
	if teselar_24 == true: 
		if $Cuadrado_24/Cuadrado.rect_position.x >= posicion_24.x-120 and $Cuadrado_24/Cuadrado.rect_position.x<= posicion_24.x+120 and $Cuadrado_24/Cuadrado.rect_position.y <=posicion_24.y+120 and $Cuadrado_24/Cuadrado.rect_position.y >=posicion_24.y-120:
			$Cuadrado_24/Cuadrado.rect_position = posicion_24
			teselar_24 = false
		velocidad = $Cuadrado_24/Cuadrado.rect_position.direction_to(posicion_24)*rapidez
		if $Cuadrado_24/Cuadrado.rect_position.distance_to(posicion_24) > 10:
			$Cuadrado_24/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_24/Cuadrado.rect_position.y += int(velocidad.y*delta)
	################################################### c_25
	if teselar_25 == true: 
		if $Cuadrado_25/Cuadrado.rect_position.x >= posicion_25.x-120 and $Cuadrado_25/Cuadrado.rect_position.x<= posicion_25.x+120 and $Cuadrado_25/Cuadrado.rect_position.y <=posicion_25.y+120 and $Cuadrado_25/Cuadrado.rect_position.y >=posicion_25.y-120:
			$Cuadrado_25/Cuadrado.rect_position = posicion_25
			teselar_25 = false
		velocidad = $Cuadrado_25/Cuadrado.rect_position.direction_to(posicion_25)*rapidez
		if $Cuadrado_25/Cuadrado.rect_position.distance_to(posicion_25) > 10:
			$Cuadrado_25/Cuadrado.rect_position.x += int(velocidad.x*delta)
			$Cuadrado_25/Cuadrado.rect_position.y += int(velocidad.y*delta)
	pass




func _on_Apilar_pressed():
	if  teselar_5 == false and teselar_25 == false:
		$Seleccion.play(0.06)
		$Cuadrado_/Cuadrado.va_objetivo = true
		$Cuadrado_2/Cuadrado.va_objetivo = true
		$Cuadrado_3/Cuadrado.va_objetivo = true
		$Cuadrado_4/Cuadrado.va_objetivo = true
		$Cuadrado_5/Cuadrado.va_objetivo = true
		$Cuadrado_6/Cuadrado.va_objetivo = true
		$Cuadrado_7/Cuadrado.va_objetivo = true
		$Cuadrado_8/Cuadrado.va_objetivo = true
		$Cuadrado_9/Cuadrado.va_objetivo = true
		$Cuadrado_10/Cuadrado.va_objetivo = true
		$Cuadrado_11/Cuadrado.va_objetivo = true
		$Cuadrado_12/Cuadrado.va_objetivo = true
		$Cuadrado_13/Cuadrado.va_objetivo = true
		$Cuadrado_14/Cuadrado.va_objetivo = true
		$Cuadrado_15/Cuadrado.va_objetivo = true
		$Cuadrado_16/Cuadrado.va_objetivo = true
		$Cuadrado_17/Cuadrado.va_objetivo = true
		$Cuadrado_18/Cuadrado.va_objetivo = true
		$Cuadrado_19/Cuadrado.va_objetivo = true
		$Cuadrado_20/Cuadrado.va_objetivo = true
		$Cuadrado_21/Cuadrado.va_objetivo = true
		$Cuadrado_22/Cuadrado.va_objetivo = true
		$Cuadrado_23/Cuadrado.va_objetivo = true
		$Cuadrado_24/Cuadrado.va_objetivo = true
		$Cuadrado_25/Cuadrado.va_objetivo = true
		$Cuadrado_26/Cuadrado.va_objetivo = true
		$Cuadrado_27/Cuadrado.va_objetivo = true
	pass # Replace with function body.


func _on_Teselar_pressed():
	if $Cuadrado_5/Cuadrado.va_objetivo == false and $Cuadrado_25/Cuadrado.va_objetivo == false:
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
	pass # Replace with function body.


func _on_R_izq2_pressed():
	$Seleccion.play(0.06)
	if figura_selecionada != null  and figura_selecionada.find_node("Cuadrado").rota_der_figura == false:
		figura_selecionada.find_node("Cuadrado").rota_izq_figura = true
	pass # Replace with function body.


func _on_R_der2_pressed():
	$Seleccion.play(0.06)
	if figura_selecionada != null and figura_selecionada.find_node("Cuadrado").rota_izq_figura == false:
		figura_selecionada.find_node("Cuadrado").rota_der_figura = true
	pass # Replace with function body.


func _on_salida_animation_finished(anim_name):
	get_tree().change_scene("res://Escenas/Nivel_1/Nivel_1.tscn")
	pass # Replace with function body.
