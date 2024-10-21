//Occupied / Unoccupied Mode switching
If SCHED Changed Then
   MODE = SCHED + 1
End If
If ((SCHED = On) And (MODE = Unoccupied)) OnFor 5S Then
    MODE = Occupied
End If

//Reset all contollers when leaving Unoccupied Mode
IfOnce MODE <> Unoccupied Then
  RT_CO.Bias = 50
  SAT_CO.Bias = 0
  MAT_CO.Bias = 0
  RAH_CO.Bias = 0
End If

//WarmUp Mode
If MODE = Unoccupied And OPT_HTG On Then
   MODE = WarmUp
End If

//PreCool Mode
If MODE = Unoccupied And OPT_CLG On Then
   MODE = PreCool
End If

//Nite Heating
If (MODE = Unoccupied) And (RT_AVG < 63) Then
    MODE = NiteHtg
End If
If (MODE = NiteHtg) And (RT_AVG > 65) Then
    MODE = Unoccupied
End If

//Nite Cooling
If (MODE = Unoccupied) And (RT_AVG > 85) Then
    MODE = NiteClg
End If
If (MODE = NiteClg) And (RT_AVG < 83) Then
    MODE = Unoccupied
End If

//Freeze detection
If FZ On Then
   MODE = FreezeLock
End If
IfOnce FZ = Off Then
   MODE = Unoccupied
End If

//Smoke detection
If SMK On Then
   MODE = SmkLock
End If
IfOnce SMK = Off Then
   MODE = Unoccupied
End If
