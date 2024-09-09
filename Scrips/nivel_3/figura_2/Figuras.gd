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

###################################
var posicion_1 = Vector2(511,98)
var posicion_2 = Vector2(740,98)
var posicion_3 = Vector2(970,98)
var posicion_4 = Vector2(1199,98)
var posicion_5 = Vector2(1428,98)
var posicion_6 = Vector2(514,324)
var posicion_7 = Vector2(741,322)
var posicion_8 = Vector2(969,323)
var posicion_9 = Vector2(1196,326)
var posicion_10 = Vector2(1423,322)
var posicion_11 = Vector2(514,547)
var posicion_12 = Vector2(740,548)
var posicion_13 = Vector2(968,549)
var posicion_14 = Vector2(1192,550)
var posicion_15 = Vector2(1420,549)
var posicion_16 = Vector2(512,775)
var posicion_17 = Vector2(741,774)
var posicion_18 = Vector2(970,777)
var posicion_19 = Vector2(1196,776)
var posicion_20 = Vector2(1421,778)
var posicion_21 = Vector2(511,998)
var posicion_22 = Vector2(739,999)###############
var posicion_23 = Vector2(966,1003)
var posicion_24 = Vector2(1194,1002)
var posicion_25 = Vector2(1421,1003)


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


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
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

func _on_izq_pressed():
	$seleccion.play(0.06)
	if figura_selecionada != null  and figura_selecionada.find_node("figura").rota_der_figura == false:
		figura_selecionada.find_node("figura").rota_izq_figura = true
	pass # Replace with function body.


func _on_salir_pressed():
	pass # Replace with function body.


func _on_Apilar_pressed():
	if teselar_5 ==  false and teselar_25 == false and teselar_15 == false:
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
	pass # Replace with function body.


func _on_der_pressed():
	$seleccion.play(0.06)
	if figura_selecionada != null and figura_selecionada.find_node("figura").rota_izq_figura == false:
		figura_selecionada.find_node("figura").rota_der_figura = true
	pass # Replace with function body.


func _on_Teselar_pressed():
	if $fig_5/figura.va_objetivo == false and $fig_25/figura.va_objetivo == false and $fig_15/figura.va_objetivo == false :
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
	pass # Replace with function body.
