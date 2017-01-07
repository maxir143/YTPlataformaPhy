//Controles
Kleft	= keyboard_check(vk_left)
Kright	= keyboard_check(vk_right)
Kjump	= keyboard_check_pressed(vk_up)

//movimiento horizontal
if (Kleft or Kright){
	HLastKey = Kright - Kleft
	if (HSpeed < HSpeedMax){
		HSpeed += HAccel
	}
}else{
	if (HSpeed > 0){
		if place_free(x,y+Gravity){
			HSpeed -= HAirAccel
		}else{
			HSpeed -= HAccel
		}
	}
}
clamp(HSpeed,0,HSpeedMax)

repeat(HSpeed){
	if place_free(x+HLastKey,y){
		x += HLastKey
	}else{
		HSpeed = 0
	}
}

//Salto
if (Kjump) and (CanJump > 0){
	CanJump --
	Gravity = -1
	VSpeed = VSPeedMax
}

//Movimiento vertical 
if (VSpeed > 0) and (Gravity = -1){
	VSpeed -= VAccel
}else{
	Gravity = 1
}

if (VSpeed < VSPeedMax) and (Gravity = 1){
	VSpeed += VAccel
}


<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> parent of 71aa1da... test
//Gravedad
repeat(VSpeed){
	if place_free(x,y+Gravity){
		y += Gravity
	}else{
		VSpeed = 0
		if (Gravity = 1){
			CanJump	= MaxJump
		}
	}
}
<<<<<<< HEAD



>>>>>>> parent of 3018da8... commit 3
=======
>>>>>>> parent of 71aa1da... test
