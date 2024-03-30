Function main
	
	Motor On
	Power High
	
	Speed 100
	Accel 100, 100
	Real PosX_Obj, PosY_Obj, PosZ_Obj
	
	Home
	SimGet SBox_1.PositionX, PosX_Obj
	SimGet SBox_1.PositionY, PosY_Obj
	SimGet SBox_1.PositionZ, PosZ_Obj
	P1 = XY(PosX_Obj, PosY_Obj, PosZ_Obj, 0)
	Wait 2
	'Jump P1
	'SimSet Robot_Scara.Pick, SBox_1, 0
	'Jump Punto_1
	'SimSet Robot_Scara.Place, SBox_1
	
	Do
		'Go Punto_1
		'Wait 0.5
		'Move Punto_2
		'Jump Punto_1
		Call Paletizado
	Loop
	

Fend
Function Paletizado
	
	Integer i
	Pallet 1, P_Origen, Eje_X, Eje_Y, 3, 3
	For i = 1 To 9
		Go Pallet(1, i) :Z(0)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(0)
	Next
	i = 0
	
Fend

