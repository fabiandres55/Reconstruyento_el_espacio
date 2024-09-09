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
var teselar_37 = false
var teselar_38 = false
var teselar_39 = false
var teselar_40 = false
var teselar_41 = false
var teselar_42 = false
var teselar_43 = false
var teselar_44 = false
var teselar_45 = false
var teselar_46 = false
var teselar_47 = false
var teselar_48 = false
var teselar_49 = false
var teselar_50 = false
var teselar_51 = false
var teselar_52 = false
var teselar_53 = false
var teselar_54 = false
var teselar_55 = false
var teselar_56 = false
var teselar_57 = false
var teselar_58 = false
var teselar_59 = false
var teselar_60 = false
var teselar_61 = false
var teselar_62 = false
var teselar_63 = false
var teselar_64 = false
var teselar_65 = false
var teselar_66 = false
var teselar_67 = false
var teselar_68 = false
###################################
var posicion_1 = Vector2(555,135)
var posicion_2 = Vector2(825,134)
var posicion_3 = Vector2(1095,134)
var posicion_4 = Vector2(1365,134)
var posicion_5 = Vector2(419,367)
var posicion_6 = Vector2(689,367)
var posicion_7 = Vector2(959,367)
var posicion_8 = Vector2(1229,367)
var posicion_9 = Vector2(1499,368)
var posicion_10 = Vector2(554,600)
var posicion_11 = Vector2(824,599)
var posicion_12 = Vector2(1094,599)
var posicion_13 = Vector2(1364,599)
var posicion_14 = Vector2(420,834)
var posicion_15 = Vector2(690,833)
var posicion_16 = Vector2(960,831)
var posicion_17 = Vector2(1228,831)
var posicion_18 = Vector2(1498,831)
var posicion_19 = Vector2(555,1065)
var posicion_20 = Vector2(825,1064)
var posicion_21 = Vector2(1095,1064)
var posicion_22 = Vector2(1362,1063)###############
var posicion_23 = Vector2(420,201)
var posicion_24 = Vector2(690,201)
var posicion_25 = Vector2(960,202)
var posicion_26 = Vector2(1229,200)
var posicion_27 = Vector2(1500,201)
var posicion_28 = Vector2(554,434)
var posicion_29 = Vector2(824,434)
var posicion_30 = Vector2(1094,433)
var posicion_31 = Vector2(1365,433)
var posicion_32 = Vector2(420,667)
var posicion_33 = Vector2(689,666)
var posicion_34 = Vector2(958,664)
var posicion_35 = Vector2(1228,664)
var posicion_36 = Vector2(1499,665)
var posicion_37 = Vector2(556,898)
var posicion_38 = Vector2(825,899)
var posicion_39 = Vector2(1094,899)
var posicion_40 = Vector2(1363,896)
var posicion_41 = Vector2(420,1000)
var posicion_42 = Vector2(691,1000)
var posicion_43 = Vector2(960,997)
var posicion_44 = Vector2(1229,997)
var posicion_45 = Vector2(1497,998)
var posicion_46 = Vector2(555,767)
var posicion_47 = Vector2(825,765)
var posicion_48 = Vector2(1096,766)
var posicion_49 = Vector2(1363,766)
var posicion_50 = Vector2(419,533)
var posicion_51 = Vector2(689,534)
var posicion_52 = Vector2(959,533)
var posicion_53 = Vector2(1230,533)
var posicion_54 = Vector2(1499,533)
var posicion_55 = Vector2(553,301)
var posicion_56 = Vector2(824,301)
var posicion_57 = Vector2(1094,300)
var posicion_58 = Vector2(1364,300)
var posicion_59 = Vector2(420,68)
var posicion_60 = Vector2(690,68)
var posicion_61 = Vector2(960,67)
var posicion_62 = Vector2(1230,68)
var posicion_63 = Vector2(1500,67)
var posicion_64 = Vector2(422,-99)########## cir_arriba
var posicion_65 = Vector2(695,-94)
var posicion_66 = Vector2(966,-95)
var posicion_67 = Vector2(1233,-96)
var posicion_68 = Vector2(1499,-97)
#################################

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
	pass # Replace with function body.


func _physics_process(delta):
	if teselar_ == true: 
		if $fig_/figura.rect_position.x >= posicion_1.x-120 and$fig_/figura.rect_position.x<= posicion_1.x+120 and $fig_/figura.rect_position.y <=posicion_1.y+120 and $fig_/figura.rect_position.y >=posicion_1.y-120:
			$fig_/figura.rect_position = posicion_1
			teselar_ = false
			$fig_/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_/figura.rect_position.direction_to(posicion_1)*rapidez
		if $fig_/figura.rect_position.distance_to(posicion_1) > 10:
			$fig_/figura.rect_position.x += int(velocidad.x*delta)
			$fig_/figura.rect_position.y += int(velocidad.y*delta)
########################################################################################### F_2
	if teselar_2 == true: 
		if $fig_2/figura.rect_position.x >= posicion_2.x-120 and$fig_2/figura.rect_position.x<= posicion_2.x+120 and $fig_2/figura.rect_position.y <=posicion_2.y+120 and $fig_2/figura.rect_position.y >=posicion_2.y-120:
			$fig_2/figura.rect_position = posicion_2
			teselar_2 = false
			$fig_2/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_2/figura.rect_position.direction_to(posicion_2)*rapidez
		if $fig_2/figura.rect_position.distance_to(posicion_2) > 10:
			$fig_2/figura.rect_position.x += int(velocidad.x*delta)
			$fig_2/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_3
	if teselar_3 == true: 
		if $fig_3/figura.rect_position.x >= posicion_3.x-120 and$fig_3/figura.rect_position.x<= posicion_3.x+120 and $fig_3/figura.rect_position.y <=posicion_3.y+120 and $fig_3/figura.rect_position.y >=posicion_3.y-120:
			$fig_3/figura.rect_position = posicion_3
			teselar_3 = false
			$fig_3/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_3/figura.rect_position.direction_to(posicion_3)*rapidez
		if $fig_3/figura.rect_position.distance_to(posicion_3) > 10:
			$fig_3/figura.rect_position.x += int(velocidad.x*delta)
			$fig_3/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_4
	if teselar_4 == true: 
		if $fig_4/figura.rect_position.x >= posicion_4.x-120 and$fig_4/figura.rect_position.x<= posicion_4.x+120 and $fig_4/figura.rect_position.y <=posicion_4.y+120 and $fig_4/figura.rect_position.y >=posicion_4.y-120:
			$fig_4/figura.rect_position = posicion_4
			teselar_4 = false
			$fig_4/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_4/figura.rect_position.direction_to(posicion_4)*rapidez
		if $fig_4/figura.rect_position.distance_to(posicion_4) > 10:
			$fig_4/figura.rect_position.x += int(velocidad.x*delta)
			$fig_4/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_5
	if teselar_5 == true: 
		if $fig_5/figura.rect_position.x >= posicion_5.x-120 and$fig_5/figura.rect_position.x<= posicion_5.x+120 and $fig_5/figura.rect_position.y <=posicion_5.y+120 and $fig_5/figura.rect_position.y >=posicion_5.y-120:
			$fig_5/figura.rect_position = posicion_5
			teselar_5 = false
			$fig_5/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_5/figura.rect_position.direction_to(posicion_5)*rapidez
		if $fig_5/figura.rect_position.distance_to(posicion_5) > 10:
			$fig_5/figura.rect_position.x += int(velocidad.x*delta)
			$fig_5/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_6
	if teselar_6 == true: 
		if $fig_6/figura.rect_position.x >= posicion_6.x-120 and$fig_6/figura.rect_position.x<= posicion_6.x+120 and $fig_6/figura.rect_position.y <=posicion_6.y+120 and $fig_6/figura.rect_position.y >=posicion_6.y-120:
			$fig_6/figura.rect_position = posicion_6
			teselar_6 = false
			$fig_6/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_6/figura.rect_position.direction_to(posicion_6)*rapidez
		if $fig_6/figura.rect_position.distance_to(posicion_6) > 10:
			$fig_6/figura.rect_position.x += int(velocidad.x*delta)
			$fig_6/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_7
	if teselar_7 == true: 
		if $fig_7/figura.rect_position.x >= posicion_7.x-120 and$fig_7/figura.rect_position.x<= posicion_7.x+120 and $fig_7/figura.rect_position.y <=posicion_7.y+120 and $fig_7/figura.rect_position.y >=posicion_7.y-120:
			$fig_7/figura.rect_position = posicion_7
			teselar_7 = false
			$fig_7/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_7/figura.rect_position.direction_to(posicion_7)*rapidez
		if $fig_7/figura.rect_position.distance_to(posicion_7) > 10:
			$fig_7/figura.rect_position.x += int(velocidad.x*delta)
			$fig_7/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_8
	if teselar_8 == true: 
		if $fig_8/figura.rect_position.x >= posicion_8.x-120 and$fig_8/figura.rect_position.x<= posicion_8.x+120 and $fig_8/figura.rect_position.y <=posicion_8.y+120 and $fig_8/figura.rect_position.y >=posicion_8.y-120:
			$fig_8/figura.rect_position = posicion_8
			teselar_8 = false
			$fig_8/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_8/figura.rect_position.direction_to(posicion_8)*rapidez
		if $fig_8/figura.rect_position.distance_to(posicion_8) > 10:
			$fig_8/figura.rect_position.x += int(velocidad.x*delta)
			$fig_8/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_9
	if teselar_9 == true: 
		if $fig_9/figura.rect_position.x >= posicion_9.x-120 and$fig_9/figura.rect_position.x<= posicion_9.x+120 and $fig_9/figura.rect_position.y <=posicion_9.y+120 and $fig_9/figura.rect_position.y >=posicion_9.y-120:
			$fig_9/figura.rect_position = posicion_9
			teselar_9 = false
			$fig_9/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_9/figura.rect_position.direction_to(posicion_9)*rapidez
		if $fig_9/figura.rect_position.distance_to(posicion_9) > 10:
			$fig_9/figura.rect_position.x += int(velocidad.x*delta)
			$fig_9/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_10
	if teselar_10 == true: 
		if $fig_10/figura.rect_position.x >= posicion_10.x-120 and$fig_10/figura.rect_position.x<= posicion_10.x+120 and $fig_10/figura.rect_position.y <=posicion_10.y+120 and $fig_10/figura.rect_position.y >=posicion_10.y-120:
			$fig_10/figura.rect_position = posicion_10
			teselar_10 = false
			$fig_10/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_10/figura.rect_position.direction_to(posicion_10)*rapidez
		if $fig_10/figura.rect_position.distance_to(posicion_10) > 10:
			$fig_10/figura.rect_position.x += int(velocidad.x*delta)
			$fig_10/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_11
	if teselar_11 == true: 
		if $fig_11/figura.rect_position.x >= posicion_11.x-120 and$fig_11/figura.rect_position.x<= posicion_11.x+120 and $fig_11/figura.rect_position.y <=posicion_11.y+120 and $fig_11/figura.rect_position.y >=posicion_11.y-120:
			$fig_11/figura.rect_position = posicion_11
			teselar_11 = false
			$fig_11/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_11/figura.rect_position.direction_to(posicion_11)*rapidez
		if $fig_11/figura.rect_position.distance_to(posicion_11) > 10:
			$fig_11/figura.rect_position.x += int(velocidad.x*delta)
			$fig_11/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_12
	if teselar_12 == true: 
		if $fig_12/figura.rect_position.x >= posicion_12.x-120 and$fig_12/figura.rect_position.x<= posicion_12.x+120 and $fig_12/figura.rect_position.y <=posicion_12.y+120 and $fig_12/figura.rect_position.y >=posicion_12.y-120:
			$fig_12/figura.rect_position = posicion_12
			teselar_12 = false
			$fig_12/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_12/figura.rect_position.direction_to(posicion_12)*rapidez
		if $fig_12/figura.rect_position.distance_to(posicion_12) > 10:
			$fig_12/figura.rect_position.x += int(velocidad.x*delta)
			$fig_12/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_13
	if teselar_13 == true: 
		if $fig_13/figura.rect_position.x >= posicion_13.x-120 and$fig_13/figura.rect_position.x<= posicion_13.x+120 and $fig_13/figura.rect_position.y <=posicion_13.y+120 and $fig_13/figura.rect_position.y >=posicion_13.y-120:
			$fig_13/figura.rect_position = posicion_13
			teselar_13 = false
			$fig_13/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_13/figura.rect_position.direction_to(posicion_13)*rapidez
		if $fig_13/figura.rect_position.distance_to(posicion_13) > 10:
			$fig_13/figura.rect_position.x += int(velocidad.x*delta)
			$fig_13/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_14
	if teselar_14 == true: 
		if $fig_14/figura.rect_position.x >= posicion_14.x-120 and$fig_14/figura.rect_position.x<= posicion_14.x+120 and $fig_14/figura.rect_position.y <=posicion_14.y+120 and $fig_14/figura.rect_position.y >=posicion_14.y-120:
			$fig_14/figura.rect_position = posicion_14
			teselar_14 = false
			$fig_14/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_14/figura.rect_position.direction_to(posicion_14)*rapidez
		if $fig_14/figura.rect_position.distance_to(posicion_14) > 10:
			$fig_14/figura.rect_position.x += int(velocidad.x*delta)
			$fig_14/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_15
	if teselar_15 == true: 
		if $fig_15/figura.rect_position.x >= posicion_15.x-120 and$fig_15/figura.rect_position.x<= posicion_15.x+120 and $fig_15/figura.rect_position.y <=posicion_15.y+120 and $fig_15/figura.rect_position.y >=posicion_15.y-120:
			$fig_15/figura.rect_position = posicion_15
			teselar_15 = false
			$fig_15/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_15/figura.rect_position.direction_to(posicion_15)*rapidez
		if $fig_15/figura.rect_position.distance_to(posicion_15) > 10:
			$fig_15/figura.rect_position.x += int(velocidad.x*delta)
			$fig_15/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_16
	if teselar_16 == true: 
		if $fig_16/figura.rect_position.x >= posicion_16.x-120 and$fig_16/figura.rect_position.x<= posicion_16.x+120 and $fig_16/figura.rect_position.y <=posicion_16.y+120 and $fig_16/figura.rect_position.y >=posicion_16.y-120:
			$fig_16/figura.rect_position = posicion_16
			teselar_16 = false
			$fig_16/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_16/figura.rect_position.direction_to(posicion_16)*rapidez
		if $fig_16/figura.rect_position.distance_to(posicion_16) > 10:
			$fig_16/figura.rect_position.x += int(velocidad.x*delta)
			$fig_16/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_17
	if teselar_17 == true: 
		if $fig_17/figura.rect_position.x >= posicion_17.x-120 and$fig_17/figura.rect_position.x<= posicion_17.x+120 and $fig_17/figura.rect_position.y <=posicion_17.y+120 and $fig_17/figura.rect_position.y >=posicion_17.y-120:
			$fig_17/figura.rect_position = posicion_17
			teselar_17 = false
			$fig_17/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_17/figura.rect_position.direction_to(posicion_17)*rapidez
		if $fig_17/figura.rect_position.distance_to(posicion_17) > 10:
			$fig_17/figura.rect_position.x += int(velocidad.x*delta)
			$fig_17/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_18
	if teselar_18 == true: 
		if $fig_18/figura.rect_position.x >= posicion_18.x-120 and$fig_18/figura.rect_position.x<= posicion_18.x+120 and $fig_18/figura.rect_position.y <=posicion_18.y+120 and $fig_18/figura.rect_position.y >=posicion_18.y-120:
			$fig_18/figura.rect_position = posicion_18
			teselar_18 = false
			$fig_18/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_18/figura.rect_position.direction_to(posicion_18)*rapidez
		if $fig_18/figura.rect_position.distance_to(posicion_18) > 10:
			$fig_18/figura.rect_position.x += int(velocidad.x*delta)
			$fig_18/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_19
	if teselar_19 == true: 
		if $fig_19/figura.rect_position.x >= posicion_19.x-120 and$fig_19/figura.rect_position.x<= posicion_19.x+120 and $fig_19/figura.rect_position.y <=posicion_19.y+120 and $fig_19/figura.rect_position.y >=posicion_19.y-120:
			$fig_19/figura.rect_position = posicion_19
			teselar_19 = false
			$fig_19/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_19/figura.rect_position.direction_to(posicion_19)*rapidez
		if $fig_19/figura.rect_position.distance_to(posicion_19) > 10:
			$fig_19/figura.rect_position.x += int(velocidad.x*delta)
			$fig_19/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_20
	if teselar_20 == true: 
		if $fig_20/figura.rect_position.x >= posicion_20.x-120 and$fig_20/figura.rect_position.x<= posicion_20.x+120 and $fig_20/figura.rect_position.y <=posicion_20.y+120 and $fig_20/figura.rect_position.y >=posicion_20.y-120:
			$fig_20/figura.rect_position = posicion_20
			teselar_20 = false
			$fig_20/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_20/figura.rect_position.direction_to(posicion_20)*rapidez
		if $fig_20/figura.rect_position.distance_to(posicion_20) > 10:
			$fig_20/figura.rect_position.x += int(velocidad.x*delta)
			$fig_20/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_21
	if teselar_21 == true: 
		if $fig_21/figura.rect_position.x >= posicion_21.x-120 and$fig_21/figura.rect_position.x<= posicion_21.x+120 and $fig_21/figura.rect_position.y <=posicion_21.y+120 and $fig_21/figura.rect_position.y >=posicion_21.y-120:
			$fig_21/figura.rect_position = posicion_21
			teselar_21 = false
			$fig_21/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_21/figura.rect_position.direction_to(posicion_21)*rapidez
		if $fig_21/figura.rect_position.distance_to(posicion_21) > 10:
			$fig_21/figura.rect_position.x += int(velocidad.x*delta)
			$fig_21/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_22
	if teselar_22 == true: 
		if $fig_22/figura.rect_position.x >= posicion_22.x-120 and$fig_22/figura.rect_position.x<= posicion_22.x+120 and $fig_22/figura.rect_position.y <=posicion_22.y+120 and $fig_22/figura.rect_position.y >=posicion_22.y-120:
			$fig_22/figura.rect_position = posicion_22
			teselar_22 = false
			$fig_22/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_22/figura.rect_position.direction_to(posicion_22)*rapidez
		if $fig_22/figura.rect_position.distance_to(posicion_22) > 10:
			$fig_22/figura.rect_position.x += int(velocidad.x*delta)
			$fig_22/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_23
	if teselar_23 == true: 
		if $fig_23/figura.rect_position.x >= posicion_23.x-120 and$fig_23/figura.rect_position.x<= posicion_23.x+120 and $fig_23/figura.rect_position.y <=posicion_23.y+120 and $fig_23/figura.rect_position.y >=posicion_23.y-120:
			$fig_23/figura.rect_position = posicion_23
			teselar_23 = false
			$fig_23/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_23/figura.rect_position.direction_to(posicion_23)*rapidez
		if $fig_23/figura.rect_position.distance_to(posicion_23) > 10:
			$fig_23/figura.rect_position.x += int(velocidad.x*delta)
			$fig_23/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_24
	if teselar_24 == true: 
		if $fig_24/figura.rect_position.x >= posicion_24.x-120 and$fig_24/figura.rect_position.x<= posicion_24.x+120 and $fig_24/figura.rect_position.y <=posicion_24.y+120 and $fig_24/figura.rect_position.y >=posicion_24.y-120:
			$fig_24/figura.rect_position = posicion_24
			teselar_24 = false
			$fig_24/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_24/figura.rect_position.direction_to(posicion_24)*rapidez
		if $fig_24/figura.rect_position.distance_to(posicion_24) > 10:
			$fig_24/figura.rect_position.x += int(velocidad.x*delta)
			$fig_24/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_25
	if teselar_25 == true: 
		if $fig_25/figura.rect_position.x >= posicion_25.x-120 and$fig_25/figura.rect_position.x<= posicion_25.x+120 and $fig_25/figura.rect_position.y <=posicion_25.y+120 and $fig_25/figura.rect_position.y >=posicion_25.y-120:
			$fig_25/figura.rect_position = posicion_25
			teselar_25 = false
			$fig_25/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_25/figura.rect_position.direction_to(posicion_25)*rapidez
		if $fig_25/figura.rect_position.distance_to(posicion_25) > 10:
			$fig_25/figura.rect_position.x += int(velocidad.x*delta)
			$fig_25/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_26
	if teselar_26 == true: 
		if $fig_26/figura.rect_position.x >= posicion_26.x-120 and$fig_26/figura.rect_position.x<= posicion_26.x+120 and $fig_26/figura.rect_position.y <=posicion_26.y+120 and $fig_26/figura.rect_position.y >=posicion_26.y-120:
			$fig_26/figura.rect_position = posicion_26
			teselar_26 = false
			$fig_26/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_26/figura.rect_position.direction_to(posicion_26)*rapidez
		if $fig_26/figura.rect_position.distance_to(posicion_26) > 10:
			$fig_26/figura.rect_position.x += int(velocidad.x*delta)
			$fig_26/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_27
	if teselar_27 == true: 
		if $fig_27/figura.rect_position.x >= posicion_27.x-120 and$fig_27/figura.rect_position.x<= posicion_27.x+120 and $fig_27/figura.rect_position.y <=posicion_27.y+120 and $fig_27/figura.rect_position.y >=posicion_27.y-120:
			$fig_27/figura.rect_position = posicion_27
			teselar_27 = false
			$fig_27/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_27/figura.rect_position.direction_to(posicion_27)*rapidez
		if $fig_27/figura.rect_position.distance_to(posicion_27) > 10:
			$fig_27/figura.rect_position.x += int(velocidad.x*delta)
			$fig_27/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_28
	if teselar_28 == true: 
		if $fig_28/figura.rect_position.x >= posicion_28.x-120 and$fig_28/figura.rect_position.x<= posicion_28.x+120 and $fig_28/figura.rect_position.y <=posicion_28.y+120 and $fig_28/figura.rect_position.y >=posicion_28.y-120:
			$fig_28/figura.rect_position = posicion_28
			teselar_28 = false
			$fig_28/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_28/figura.rect_position.direction_to(posicion_28)*rapidez
		if $fig_28/figura.rect_position.distance_to(posicion_28) > 10:
			$fig_28/figura.rect_position.x += int(velocidad.x*delta)
			$fig_28/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_29
	if teselar_29 == true: 
		if $fig_29/figura.rect_position.x >= posicion_29.x-120 and$fig_29/figura.rect_position.x<= posicion_29.x+120 and $fig_29/figura.rect_position.y <=posicion_29.y+120 and $fig_29/figura.rect_position.y >=posicion_29.y-120:
			$fig_29/figura.rect_position = posicion_29
			teselar_29 = false
			$fig_29/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_29/figura.rect_position.direction_to(posicion_29)*rapidez
		if $fig_29/figura.rect_position.distance_to(posicion_29) > 10:
			$fig_29/figura.rect_position.x += int(velocidad.x*delta)
			$fig_29/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_30
	if teselar_30 == true: 
		if $fig_30/figura.rect_position.x >= posicion_30.x-120 and$fig_30/figura.rect_position.x<= posicion_30.x+120 and $fig_30/figura.rect_position.y <=posicion_30.y+120 and $fig_30/figura.rect_position.y >=posicion_30.y-120:
			$fig_30/figura.rect_position = posicion_30
			teselar_30 = false
			$fig_30/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_30/figura.rect_position.direction_to(posicion_30)*rapidez
		if $fig_30/figura.rect_position.distance_to(posicion_30) > 10:
			$fig_30/figura.rect_position.x += int(velocidad.x*delta)
			$fig_30/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_31
	if teselar_31 == true: 
		if $fig_31/figura.rect_position.x >= posicion_31.x-120 and$fig_31/figura.rect_position.x<= posicion_31.x+120 and $fig_31/figura.rect_position.y <=posicion_31.y+120 and $fig_31/figura.rect_position.y >=posicion_31.y-120:
			$fig_31/figura.rect_position = posicion_31
			teselar_31 = false
			$fig_31/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_31/figura.rect_position.direction_to(posicion_31)*rapidez
		if $fig_31/figura.rect_position.distance_to(posicion_31) > 10:
			$fig_31/figura.rect_position.x += int(velocidad.x*delta)
			$fig_31/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_32
	if teselar_32 == true: 
		if $fig_32/figura.rect_position.x >= posicion_32.x-120 and$fig_32/figura.rect_position.x<= posicion_32.x+120 and $fig_32/figura.rect_position.y <=posicion_32.y+120 and $fig_32/figura.rect_position.y >=posicion_32.y-120:
			$fig_32/figura.rect_position = posicion_32
			teselar_32 = false
			$fig_32/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_32/figura.rect_position.direction_to(posicion_32)*rapidez
		if $fig_32/figura.rect_position.distance_to(posicion_32) > 10:
			$fig_32/figura.rect_position.x += int(velocidad.x*delta)
			$fig_32/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_33
	if teselar_33 == true: 
		if $fig_33/figura.rect_position.x >= posicion_33.x-120 and$fig_33/figura.rect_position.x<= posicion_33.x+120 and $fig_33/figura.rect_position.y <=posicion_33.y+120 and $fig_33/figura.rect_position.y >=posicion_33.y-120:
			$fig_33/figura.rect_position = posicion_33
			teselar_33 = false
			$fig_33/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_33/figura.rect_position.direction_to(posicion_33)*rapidez
		if $fig_33/figura.rect_position.distance_to(posicion_33) > 10:
			$fig_33/figura.rect_position.x += int(velocidad.x*delta)
			$fig_33/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_34
	if teselar_34 == true: 
		if $fig_34/figura.rect_position.x >= posicion_34.x-120 and$fig_34/figura.rect_position.x<= posicion_34.x+120 and $fig_34/figura.rect_position.y <=posicion_34.y+120 and $fig_34/figura.rect_position.y >=posicion_34.y-120:
			$fig_34/figura.rect_position = posicion_34
			teselar_34 = false
			$fig_34/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_34/figura.rect_position.direction_to(posicion_34)*rapidez
		if $fig_34/figura.rect_position.distance_to(posicion_34) > 10:
			$fig_34/figura.rect_position.x += int(velocidad.x*delta)
			$fig_34/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_35
	if teselar_35 == true: 
		if $fig_35/figura.rect_position.x >= posicion_35.x-120 and$fig_35/figura.rect_position.x<= posicion_35.x+120 and $fig_35/figura.rect_position.y <=posicion_35.y+120 and $fig_35/figura.rect_position.y >=posicion_35.y-120:
			$fig_35/figura.rect_position = posicion_35
			teselar_35 = false
			$fig_35/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_35/figura.rect_position.direction_to(posicion_35)*rapidez
		if $fig_35/figura.rect_position.distance_to(posicion_35) > 10:
			$fig_35/figura.rect_position.x += int(velocidad.x*delta)
			$fig_35/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_36
	if teselar_36 == true: 
		if $fig_36/figura.rect_position.x >= posicion_36.x-120 and$fig_36/figura.rect_position.x<= posicion_36.x+120 and $fig_36/figura.rect_position.y <=posicion_36.y+120 and $fig_36/figura.rect_position.y >=posicion_36.y-120:
			$fig_36/figura.rect_position = posicion_36
			teselar_36 = false
			$fig_36/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_36/figura.rect_position.direction_to(posicion_36)*rapidez
		if $fig_36/figura.rect_position.distance_to(posicion_36) > 10:
			$fig_36/figura.rect_position.x += int(velocidad.x*delta)
			$fig_36/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_37
	if teselar_37 == true: 
		if $fig_37/figura.rect_position.x >= posicion_37.x-120 and$fig_37/figura.rect_position.x<= posicion_37.x+120 and $fig_37/figura.rect_position.y <=posicion_37.y+120 and $fig_37/figura.rect_position.y >=posicion_37.y-120:
			$fig_37/figura.rect_position = posicion_37
			teselar_37 = false
			$fig_37/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_37/figura.rect_position.direction_to(posicion_37)*rapidez
		if $fig_37/figura.rect_position.distance_to(posicion_37) > 10:
			$fig_37/figura.rect_position.x += int(velocidad.x*delta)
			$fig_37/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_38
	if teselar_38 == true: 
		if $fig_38/figura.rect_position.x >= posicion_38.x-120 and$fig_38/figura.rect_position.x<= posicion_38.x+120 and $fig_38/figura.rect_position.y <=posicion_38.y+120 and $fig_38/figura.rect_position.y >=posicion_38.y-120:
			$fig_38/figura.rect_position = posicion_38
			teselar_38 = false
			$fig_38/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_38/figura.rect_position.direction_to(posicion_38)*rapidez
		if $fig_38/figura.rect_position.distance_to(posicion_38) > 10:
			$fig_38/figura.rect_position.x += int(velocidad.x*delta)
			$fig_38/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_39
	if teselar_39 == true: 
		if $fig_39/figura.rect_position.x >= posicion_39.x-120 and$fig_39/figura.rect_position.x<= posicion_39.x+120 and $fig_39/figura.rect_position.y <=posicion_39.y+120 and $fig_39/figura.rect_position.y >=posicion_39.y-120:
			$fig_39/figura.rect_position = posicion_39
			teselar_39 = false
			$fig_39/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_39/figura.rect_position.direction_to(posicion_39)*rapidez
		if $fig_39/figura.rect_position.distance_to(posicion_39) > 10:
			$fig_39/figura.rect_position.x += int(velocidad.x*delta)
			$fig_39/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_40
	if teselar_40 == true: 
		if $fig_40/figura.rect_position.x >= posicion_40.x-120 and$fig_40/figura.rect_position.x<= posicion_40.x+120 and $fig_40/figura.rect_position.y <=posicion_40.y+120 and $fig_40/figura.rect_position.y >=posicion_40.y-120:
			$fig_40/figura.rect_position = posicion_40
			teselar_40 = false
			$fig_40/figura/Sprite.rotation_degrees = 0
		velocidad = $fig_40/figura.rect_position.direction_to(posicion_40)*rapidez
		if $fig_40/figura.rect_position.distance_to(posicion_40) > 10:
			$fig_40/figura.rect_position.x += int(velocidad.x*delta)
			$fig_40/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_41
	if teselar_41 == true: 
		if $fig_41/figura.rect_position.x >= posicion_41.x-120 and$fig_41/figura.rect_position.x<= posicion_41.x+120 and $fig_41/figura.rect_position.y <=posicion_41.y+120 and $fig_41/figura.rect_position.y >=posicion_41.y-120:
			$fig_41/figura.rect_position = posicion_41
			teselar_41 = false
			$fig_41/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_41/figura.rect_position.direction_to(posicion_41)*rapidez
		if $fig_41/figura.rect_position.distance_to(posicion_41) > 10:
			$fig_41/figura.rect_position.x += int(velocidad.x*delta)
			$fig_41/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_42
	if teselar_42 == true: 
		if $fig_42/figura.rect_position.x >= posicion_42.x-120 and$fig_42/figura.rect_position.x<= posicion_42.x+120 and $fig_42/figura.rect_position.y <=posicion_42.y+120 and $fig_42/figura.rect_position.y >=posicion_42.y-120:
			$fig_42/figura.rect_position = posicion_42
			teselar_42 = false
			$fig_42/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_42/figura.rect_position.direction_to(posicion_42)*rapidez
		if $fig_42/figura.rect_position.distance_to(posicion_42) > 10:
			$fig_42/figura.rect_position.x += int(velocidad.x*delta)
			$fig_42/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_43
	if teselar_43 == true: 
		if $fig_43/figura.rect_position.x >= posicion_43.x-120 and$fig_43/figura.rect_position.x<= posicion_43.x+120 and $fig_43/figura.rect_position.y <=posicion_43.y+120 and $fig_43/figura.rect_position.y >=posicion_43.y-120:
			$fig_43/figura.rect_position = posicion_43
			teselar_43 = false
			$fig_43/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_43/figura.rect_position.direction_to(posicion_43)*rapidez
		if $fig_43/figura.rect_position.distance_to(posicion_43) > 10:
			$fig_43/figura.rect_position.x += int(velocidad.x*delta)
			$fig_43/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_44
	if teselar_44 == true: 
		if $fig_44/figura.rect_position.x >= posicion_44.x-120 and$fig_44/figura.rect_position.x<= posicion_44.x+120 and $fig_44/figura.rect_position.y <=posicion_44.y+120 and $fig_44/figura.rect_position.y >=posicion_44.y-120:
			$fig_44/figura.rect_position = posicion_44
			teselar_44 = false
			$fig_44/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_44/figura.rect_position.direction_to(posicion_44)*rapidez
		if $fig_44/figura.rect_position.distance_to(posicion_44) > 10:
			$fig_44/figura.rect_position.x += int(velocidad.x*delta)
			$fig_44/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_45
	if teselar_45 == true: 
		if $fig_45/figura.rect_position.x >= posicion_45.x-120 and$fig_45/figura.rect_position.x<= posicion_45.x+120 and $fig_45/figura.rect_position.y <=posicion_45.y+120 and $fig_45/figura.rect_position.y >=posicion_45.y-120:
			$fig_45/figura.rect_position = posicion_45
			teselar_45 = false
			$fig_45/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_45/figura.rect_position.direction_to(posicion_45)*rapidez
		if $fig_45/figura.rect_position.distance_to(posicion_45) > 10:
			$fig_45/figura.rect_position.x += int(velocidad.x*delta)
			$fig_45/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_46
	if teselar_46 == true: 
		if $fig_46/figura.rect_position.x >= posicion_46.x-120 and$fig_46/figura.rect_position.x<= posicion_46.x+120 and $fig_46/figura.rect_position.y <=posicion_46.y+120 and $fig_46/figura.rect_position.y >=posicion_46.y-120:
			$fig_46/figura.rect_position = posicion_46
			teselar_46 = false
			$fig_46/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_46/figura.rect_position.direction_to(posicion_46)*rapidez
		if $fig_46/figura.rect_position.distance_to(posicion_46) > 10:
			$fig_46/figura.rect_position.x += int(velocidad.x*delta)
			$fig_46/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_47
	if teselar_47 == true: 
		if $fig_47/figura.rect_position.x >= posicion_47.x-120 and$fig_47/figura.rect_position.x<= posicion_47.x+120 and $fig_47/figura.rect_position.y <=posicion_47.y+120 and $fig_47/figura.rect_position.y >=posicion_47.y-120:
			$fig_47/figura.rect_position = posicion_47
			teselar_47 = false
			$fig_47/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_47/figura.rect_position.direction_to(posicion_47)*rapidez
		if $fig_47/figura.rect_position.distance_to(posicion_47) > 10:
			$fig_47/figura.rect_position.x += int(velocidad.x*delta)
			$fig_47/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_48
	if teselar_48 == true: 
		if $fig_48/figura.rect_position.x >= posicion_48.x-120 and$fig_48/figura.rect_position.x<= posicion_48.x+120 and $fig_48/figura.rect_position.y <=posicion_48.y+120 and $fig_48/figura.rect_position.y >=posicion_48.y-120:
			$fig_48/figura.rect_position = posicion_48
			teselar_48 = false
			$fig_48/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_48/figura.rect_position.direction_to(posicion_48)*rapidez
		if $fig_48/figura.rect_position.distance_to(posicion_48) > 10:
			$fig_48/figura.rect_position.x += int(velocidad.x*delta)
			$fig_48/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_49
	if teselar_49 == true: 
		if $fig_49/figura.rect_position.x >= posicion_49.x-120 and$fig_49/figura.rect_position.x<= posicion_49.x+120 and $fig_49/figura.rect_position.y <=posicion_49.y+120 and $fig_49/figura.rect_position.y >=posicion_49.y-120:
			$fig_49/figura.rect_position = posicion_49
			teselar_49 = false
			$fig_49/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_49/figura.rect_position.direction_to(posicion_49)*rapidez
		if $fig_49/figura.rect_position.distance_to(posicion_49) > 10:
			$fig_49/figura.rect_position.x += int(velocidad.x*delta)
			$fig_49/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_50
	if teselar_50 == true: 
		if $fig_50/figura.rect_position.x >= posicion_50.x-90 and$fig_50/figura.rect_position.x<= posicion_50.x+90 and $fig_50/figura.rect_position.y <=posicion_50.y+90 and $fig_50/figura.rect_position.y >=posicion_50.y-90:
			$fig_50/figura.rect_position = posicion_50
			teselar_50 = false
			$fig_50/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_50/figura.rect_position.direction_to(posicion_50)*rapidez
		if $fig_50/figura.rect_position.distance_to(posicion_50) > 10:
			$fig_50/figura.rect_position.x += int(velocidad.x*delta)
			$fig_50/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_51
	if teselar_51 == true: 
		if $fig_51/figura.rect_position.x >= posicion_51.x-120 and$fig_51/figura.rect_position.x<= posicion_51.x+120 and $fig_51/figura.rect_position.y <=posicion_51.y+120 and $fig_51/figura.rect_position.y >=posicion_51.y-120:
			$fig_51/figura.rect_position = posicion_51
			teselar_51 = false
			$fig_51/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_51/figura.rect_position.direction_to(posicion_51)*rapidez
		if $fig_51/figura.rect_position.distance_to(posicion_51) > 10:
			$fig_51/figura.rect_position.x += int(velocidad.x*delta)
			$fig_51/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_52
	if teselar_52 == true: 
		if $fig_52/figura.rect_position.x >= posicion_52.x-120 and$fig_52/figura.rect_position.x<= posicion_52.x+120 and $fig_52/figura.rect_position.y <=posicion_52.y+120 and $fig_52/figura.rect_position.y >=posicion_52.y-120:
			$fig_52/figura.rect_position = posicion_52
			teselar_52 = false
			$fig_52/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_52/figura.rect_position.direction_to(posicion_52)*rapidez
		if $fig_52/figura.rect_position.distance_to(posicion_52) > 10:
			$fig_52/figura.rect_position.x += int(velocidad.x*delta)
			$fig_52/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_53
	if teselar_53 == true: 
		if $fig_53/figura.rect_position.x >= posicion_53.x-120 and$fig_53/figura.rect_position.x<= posicion_53.x+120 and $fig_53/figura.rect_position.y <=posicion_53.y+120 and $fig_53/figura.rect_position.y >=posicion_53.y-120:
			$fig_53/figura.rect_position = posicion_53
			teselar_53 = false
			$fig_53/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_53/figura.rect_position.direction_to(posicion_53)*rapidez
		if $fig_53/figura.rect_position.distance_to(posicion_53) > 10:
			$fig_53/figura.rect_position.x += int(velocidad.x*delta)
			$fig_53/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_54
	if teselar_54 == true: 
		if $fig_54/figura.rect_position.x >= posicion_54.x-120 and$fig_54/figura.rect_position.x<= posicion_54.x+120 and $fig_54/figura.rect_position.y <=posicion_54.y+120 and $fig_54/figura.rect_position.y >=posicion_54.y-120:
			$fig_54/figura.rect_position = posicion_54
			teselar_54 = false
			$fig_54/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_54/figura.rect_position.direction_to(posicion_54)*rapidez
		if $fig_54/figura.rect_position.distance_to(posicion_54) > 10:
			$fig_54/figura.rect_position.x += int(velocidad.x*delta)
			$fig_54/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_55
	if teselar_55 == true: 
		if $fig_55/figura.rect_position.x >= posicion_55.x-120 and$fig_55/figura.rect_position.x<= posicion_55.x+120 and $fig_55/figura.rect_position.y <=posicion_55.y+120 and $fig_55/figura.rect_position.y >=posicion_55.y-120:
			$fig_55/figura.rect_position = posicion_55
			teselar_55 = false
			$fig_55/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_55/figura.rect_position.direction_to(posicion_55)*rapidez
		if $fig_55/figura.rect_position.distance_to(posicion_55) > 10:
			$fig_55/figura.rect_position.x += int(velocidad.x*delta)
			$fig_55/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_56
	if teselar_56 == true: 
		if $fig_56/figura.rect_position.x >= posicion_56.x-120 and$fig_56/figura.rect_position.x<= posicion_56.x+120 and $fig_56/figura.rect_position.y <=posicion_56.y+120 and $fig_56/figura.rect_position.y >=posicion_56.y-120:
			$fig_56/figura.rect_position = posicion_56
			teselar_56 = false
			$fig_56/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_56/figura.rect_position.direction_to(posicion_56)*rapidez
		if $fig_56/figura.rect_position.distance_to(posicion_56) > 10:
			$fig_56/figura.rect_position.x += int(velocidad.x*delta)
			$fig_56/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_57
	if teselar_57 == true: 
		if $fig_57/figura.rect_position.x >= posicion_57.x-120 and$fig_57/figura.rect_position.x<= posicion_57.x+120 and $fig_57/figura.rect_position.y <=posicion_57.y+120 and $fig_57/figura.rect_position.y >=posicion_57.y-120:
			$fig_57/figura.rect_position = posicion_57
			teselar_57 = false
			$fig_57/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_57/figura.rect_position.direction_to(posicion_57)*rapidez
		if $fig_57/figura.rect_position.distance_to(posicion_57) > 10:
			$fig_57/figura.rect_position.x += int(velocidad.x*delta)
			$fig_57/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_58
	if teselar_58 == true: 
		if $fig_58/figura.rect_position.x >= posicion_58.x-120 and$fig_58/figura.rect_position.x<= posicion_58.x+120 and $fig_58/figura.rect_position.y <=posicion_58.y+120 and $fig_58/figura.rect_position.y >=posicion_58.y-120:
			$fig_58/figura.rect_position = posicion_58
			teselar_58 = false
			$fig_58/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_58/figura.rect_position.direction_to(posicion_58)*rapidez
		if $fig_58/figura.rect_position.distance_to(posicion_58) > 10:
			$fig_58/figura.rect_position.x += int(velocidad.x*delta)
			$fig_58/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_59
	if teselar_59 == true: 
		if $fig_59/figura.rect_position.x >= posicion_59.x-90 and$fig_59/figura.rect_position.x<= posicion_59.x+90 and $fig_59/figura.rect_position.y <=posicion_59.y+90 and $fig_59/figura.rect_position.y >=posicion_59.y-90:
			$fig_59/figura.rect_position = posicion_59
			teselar_59 = false
			$fig_59/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_59/figura.rect_position.direction_to(posicion_59)*rapidez
		if $fig_59/figura.rect_position.distance_to(posicion_59) > 10:
			$fig_59/figura.rect_position.x += int(velocidad.x*delta)
			$fig_59/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_60
	if teselar_60 == true: 
		if $fig_60/figura.rect_position.x >= posicion_60.x-120 and$fig_60/figura.rect_position.x<= posicion_60.x+120 and $fig_60/figura.rect_position.y <=posicion_60.y+120 and $fig_60/figura.rect_position.y >=posicion_60.y-120:
			$fig_60/figura.rect_position = posicion_60
			teselar_60 = false
			$fig_60/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_60/figura.rect_position.direction_to(posicion_60)*rapidez
		if $fig_60/figura.rect_position.distance_to(posicion_60) > 10:
			$fig_60/figura.rect_position.x += int(velocidad.x*delta)
			$fig_60/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_61
	if teselar_61 == true: 
		if $fig_61/figura.rect_position.x >= posicion_61.x-120 and$fig_61/figura.rect_position.x<= posicion_61.x+120 and $fig_61/figura.rect_position.y <=posicion_61.y+120 and $fig_61/figura.rect_position.y >=posicion_61.y-120:
			$fig_61/figura.rect_position = posicion_61
			teselar_61 = false
			$fig_61/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_61/figura.rect_position.direction_to(posicion_61)*rapidez
		if $fig_61/figura.rect_position.distance_to(posicion_61) > 10:
			$fig_61/figura.rect_position.x += int(velocidad.x*delta)
			$fig_61/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_62
	if teselar_62 == true: 
		if $fig_62/figura.rect_position.x >= posicion_62.x-120 and$fig_62/figura.rect_position.x<= posicion_62.x+120 and $fig_62/figura.rect_position.y <=posicion_62.y+120 and $fig_62/figura.rect_position.y >=posicion_62.y-120:
			$fig_62/figura.rect_position = posicion_62
			teselar_62 = false
			$fig_62/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_62/figura.rect_position.direction_to(posicion_62)*rapidez
		if $fig_62/figura.rect_position.distance_to(posicion_62) > 10:
			$fig_62/figura.rect_position.x += int(velocidad.x*delta)
			$fig_62/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_63
	if teselar_63 == true: 
		if $fig_63/figura.rect_position.x >= posicion_63.x-120 and$fig_63/figura.rect_position.x<= posicion_63.x+120 and $fig_63/figura.rect_position.y <=posicion_63.y+120 and $fig_63/figura.rect_position.y >=posicion_63.y-120:
			$fig_63/figura.rect_position = posicion_63
			teselar_63 = false
			$fig_63/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_63/figura.rect_position.direction_to(posicion_63)*rapidez
		if $fig_63/figura.rect_position.distance_to(posicion_63) > 10:
			$fig_63/figura.rect_position.x += int(velocidad.x*delta)
			$fig_63/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_64
	if teselar_64 == true: 
		if $fig_64/figura.rect_position.x >= posicion_64.x-120 and$fig_64/figura.rect_position.x<= posicion_64.x+120 and $fig_64/figura.rect_position.y <=posicion_64.y+120 and $fig_64/figura.rect_position.y >=posicion_64.y-120:
			$fig_64/figura.rect_position = posicion_64
			teselar_64 = false
			$fig_64/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_64/figura.rect_position.direction_to(posicion_64)*rapidez
		if $fig_64/figura.rect_position.distance_to(posicion_64) > 10:
			$fig_64/figura.rect_position.x += int(velocidad.x*delta)
			$fig_64/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_65
	if teselar_65 == true: 
		if $fig_65/figura.rect_position.x >= posicion_65.x-120 and$fig_65/figura.rect_position.x<= posicion_65.x+120 and $fig_65/figura.rect_position.y <=posicion_65.y+120 and $fig_65/figura.rect_position.y >=posicion_65.y-120:
			$fig_65/figura.rect_position = posicion_65
			teselar_65 = false
			$fig_65/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_65/figura.rect_position.direction_to(posicion_65)*rapidez
		if $fig_65/figura.rect_position.distance_to(posicion_65) > 10:
			$fig_65/figura.rect_position.x += int(velocidad.x*delta)
			$fig_65/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_66
	if teselar_66 == true: 
		if $fig_66/figura.rect_position.x >= posicion_66.x-120 and$fig_66/figura.rect_position.x<= posicion_66.x+120 and $fig_66/figura.rect_position.y <=posicion_66.y+120 and $fig_66/figura.rect_position.y >=posicion_66.y-120:
			$fig_66/figura.rect_position = posicion_66
			teselar_66 = false
			$fig_66/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_66/figura.rect_position.direction_to(posicion_66)*rapidez
		if $fig_66/figura.rect_position.distance_to(posicion_66) > 10:
			$fig_66/figura.rect_position.x += int(velocidad.x*delta)
			$fig_66/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_67
	if teselar_67 == true: 
		if $fig_67/figura.rect_position.x >= posicion_67.x-120 and$fig_67/figura.rect_position.x<= posicion_67.x+120 and $fig_67/figura.rect_position.y <=posicion_67.y+120 and $fig_67/figura.rect_position.y >=posicion_67.y-120:
			$fig_67/figura.rect_position = posicion_67
			teselar_67 = false
			$fig_67/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_67/figura.rect_position.direction_to(posicion_67)*rapidez
		if $fig_67/figura.rect_position.distance_to(posicion_67) > 10:
			$fig_67/figura.rect_position.x += int(velocidad.x*delta)
			$fig_67/figura.rect_position.y += int(velocidad.y*delta)
	########################################################################################### F_68
	if teselar_68 == true: 
		if $fig_68/figura.rect_position.x >= posicion_68.x-120 and$fig_68/figura.rect_position.x<= posicion_68.x+120 and $fig_68/figura.rect_position.y <=posicion_68.y+120 and $fig_68/figura.rect_position.y >=posicion_68.y-120:
			$fig_68/figura.rect_position = posicion_68
			teselar_68 = false
			$fig_68/figura/Sprite.rotation_degrees = 180
		velocidad = $fig_68/figura.rect_position.direction_to(posicion_68)*rapidez
		if $fig_68/figura.rect_position.distance_to(posicion_68) > 10:
			$fig_68/figura.rect_position.x += int(velocidad.x*delta)
			$fig_68/figura.rect_position.y += int(velocidad.y*delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Apilar_pressed():
	if teselar_45 ==  false and teselar_63 == false and teselar_9 == false:
		$seleccion.play(0.06)
		$fig_/figura.va_objetivo = true
		$fig_2/figura.va_objetivo = true
		$fig_3/figura.va_objetivo = true
		$fig_4/figura.va_objetivo = true
		$fig_5/figura.va_objetivo = true
		$fig_6/figura.va_objetivo = true
		$fig_7/figura.va_objetivo = true
		$fig_8/figura.va_objetivo = true
		$fig_9/figura.va_objetivo = true
		$fig_10/figura.va_objetivo = true
		$fig_11/figura.va_objetivo = true
		$fig_12/figura.va_objetivo = true
		$fig_13/figura.va_objetivo = true
		$fig_14/figura.va_objetivo = true
		$fig_15/figura.va_objetivo = true
		$fig_16/figura.va_objetivo = true
		$fig_17/figura.va_objetivo = true
		$fig_18/figura.va_objetivo = true
		$fig_19/figura.va_objetivo = true
		$fig_20/figura.va_objetivo = true
		$fig_21/figura.va_objetivo = true
		$fig_22/figura.va_objetivo = true
		$fig_23/figura.va_objetivo = true
		$fig_24/figura.va_objetivo = true
		$fig_25/figura.va_objetivo = true
		$fig_26/figura.va_objetivo = true
		$fig_27/figura.va_objetivo = true
		$fig_28/figura.va_objetivo = true
		$fig_29/figura.va_objetivo = true
		$fig_30/figura.va_objetivo = true
		$fig_31/figura.va_objetivo = true
		$fig_32/figura.va_objetivo = true
		$fig_33/figura.va_objetivo = true
		$fig_34/figura.va_objetivo = true
		$fig_35/figura.va_objetivo = true
		$fig_36/figura.va_objetivo = true
		$fig_37/figura.va_objetivo = true
		$fig_38/figura.va_objetivo = true
		$fig_39/figura.va_objetivo = true
		$fig_40/figura.va_objetivo = true
		$fig_41/figura.va_objetivo = true
		$fig_42/figura.va_objetivo = true
		$fig_43/figura.va_objetivo = true
		$fig_44/figura.va_objetivo = true
		$fig_45/figura.va_objetivo = true
		$fig_46/figura.va_objetivo = true
		$fig_47/figura.va_objetivo = true
		$fig_48/figura.va_objetivo = true
		$fig_49/figura.va_objetivo = true
		$fig_50/figura.va_objetivo = true
		$fig_51/figura.va_objetivo = true
		$fig_52/figura.va_objetivo = true
		$fig_53/figura.va_objetivo = true
		$fig_54/figura.va_objetivo = true
		$fig_55/figura.va_objetivo = true
		$fig_56/figura.va_objetivo = true
		$fig_57/figura.va_objetivo = true
		$fig_58/figura.va_objetivo = true
		$fig_59/figura.va_objetivo = true
		$fig_60/figura.va_objetivo = true
		$fig_61/figura.va_objetivo = true
		$fig_62/figura.va_objetivo = true
		$fig_63/figura.va_objetivo = true
		$fig_64/figura.va_objetivo = true
		$fig_65/figura.va_objetivo = true
		$fig_66/figura.va_objetivo = true
		$fig_67/figura.va_objetivo = true
		$fig_68/figura.va_objetivo = true
		$fig_69/figura.va_objetivo = true
		$fig_70/figura.va_objetivo = true
		$fig_71/figura.va_objetivo = true
		$fig_72/figura.va_objetivo = true
	pass # Replace with function body.


func _on_Teselar_pressed():
	if $fig_45/figura.va_objetivo == false and $fig_63/figura.va_objetivo == false and $fig_9/figura.va_objetivo == false :
		$seleccion.play(0.06)
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
		teselar_37 = true
		teselar_38 = true
		teselar_39 = true
		teselar_40 = true
		teselar_41 = true
		teselar_42 = true
		teselar_43 = true
		teselar_44 = true
		teselar_45 = true
		teselar_46 = true
		teselar_47 = true
		teselar_48 = true
		teselar_49 = true
		teselar_50 = true
		teselar_51 = true
		teselar_52 = true
		teselar_53 = true
		teselar_54 = true
		teselar_55 = true
		teselar_56 = true
		teselar_57 = true
		teselar_58 = true
		teselar_59 = true
		teselar_60 = true
		teselar_61 = true
		teselar_62 = true
		teselar_63 = true
		teselar_64 = true
		teselar_65 = true
		teselar_66 = true
		teselar_67 = true
		teselar_68 = true
	pass # Replace with function body.


func _on_Rotar_izq_pressed():
	$seleccion.play(0.06)
	if figura_selecionada != null  and figura_selecionada.find_node("figura").rota_der_figura == false:
		figura_selecionada.find_node("figura").rota_izq_figura = true
	pass # Replace with function body.


func _on_Rotar_der_pressed():
	$seleccion.play(0.06)
	if figura_selecionada != null and figura_selecionada.find_node("figura").rota_izq_figura == false:
		figura_selecionada.find_node("figura").rota_der_figura = true
	pass # Replace with function body.
