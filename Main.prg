Function main
	
	Motor On
	Power High
	
	Speed 50
	Accel 50, 50
	Real PosX_Obj, PosY_Obj, PosZ_Obj
	
	'Integer M
	'Real Y
	
	Home
	'SimGet SBox_1.PositionX, PosX_Obj
	'SimGet SBox_1.PositionY, PosY_Obj
	
	'Tomar_Objeto = XY(PosX_Obj, PosY_Obj, PosZ_Obj, 0) 'Asignando coordenadas al target Tomar_Objeto
	'Go Tomar_Objeto
	'SimSet UN_T3.Pick, SBox_1, 0
	'Go Posicion_1
	'SimSet UN_T3.Place, SBox_1
	
	Do
		If MemSw(512) Then
			Wait 0.1 'Esperar un segundo
			MemOn (514)
			MemOff (513)
			Go Eje_X
			Move Eje_Y
			Wait 0.1 'Esperar un segundo
			MemOn (513)
			MemOff (514)
			Go Eje_X
			Call Paletizado
			Home
			Call Paletizado2
			Home
			Call Paletizado_externo
			
		EndIf
		
	Loop
	

Fend

Function Paletizado
	
	Integer i
	Pallet 1, P_Origen, Eje_X, Eje_Y, 3, 3
	For i = 1 To 9
		Go Pallet(1, i) :Z(687.166 + 100)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(687.166 + 100)
	Next
	i = 0
	
Fend
Function Paletizado2
	Integer i
	Pallet 2, P_Origen, Eje_X, Eje_Y, 3, 3
	For i = 1 To 3
		Go Pallet(1, i) :Z(687.166 + 100)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(687.166 + 100)
	Next
	For i = 6 To 4 Step -1
		Go Pallet(1, i) :Z(687.166 + 100)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(687.166 + 100)
	Next
	For i = 7 To 9
		Go Pallet(1, i) :Z(687.166 + 100)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(687.166 + 100)
	Next
Fend
Function Paletizado3
	Integer i
	Pallet 3, P_Origen, Eje_X, Eje_Y, 3, 3
	For i = 1 To 3
		Go Pallet(1, i) :Z(687.166 + 100)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(687.166 + 100)
	Next
	For i = 6 To 9 Step 3
		Go Pallet(1, i) :Z(687.166 + 100)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(687.166 + 100)
	Next
	For i = 8 To 7 Step -1
		Go Pallet(1, i) :Z(687.166 + 100)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(687.166 + 100)
	Next
	For i = 4 To 5
		Go Pallet(1, i) :Z(687.166 + 100)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(687.166 + 100)
	Next
Fend
Function Paletizado_externo
	Integer i
	Integer j
	Pallet Outside, 4, P_Origen, Eje_X, Eje_Y, 3, 3
	For i = 1 To 4
		For j = 1 To 4
			Go Pallet(4, i, j) :Z(687.166 + 100)
			Go Pallet(4, i, j)
			Go Pallet(4, i, j) :Z(687.166 + 100)
			
			
		Next
		
	Next
Fend

