//Controles
Kleft	= keyboard_check(vk_left)
Kright	= keyboard_check(vk_right)
Kjump	= keyboard_check_pressed(vk_up)

//Fisicas

//Vertical
VInput =	Kright - Kleft 
if place_free(x,y-1){ //Posicion [suelo]
	if VInput != 0 { //input [!=] 0
		repeat(VSpeed){ // mover [x]
			if place_free(x+VInput,y){ //posicion libre[true]
				x += VInput
				if VSpeed < VSpeedMax{ //velocidad Actual [!=] velocidad maxima
					VSpeed += VAccel
				}
			}else{	//posicion libre[false]
				if VSpeed > VSpeedDef{ //velocidad Actual [!=] 0
					VSpeed -= VAccel
				}
			}
		}	
	}else{
		if VSpeed > VSpeedDef{ //velocidad Actual [!=] 0
				VSpeed -= VAccel
		}
	}
	VAccel = clamp(VAccel,VSpeedDef,VSpeedMax) //evitar exeder la velocidad maxima	
}




