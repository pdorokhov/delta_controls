//Fans Control
If (MODE = Unoccupied) OnFor 20S Then //Fan off delay 20 sec.
  S_FAN = Off R_FAN = Off HTG_CIRC = Off
ElseIf  MODE = Occupied Then
  S_FAN = On R_FAN = On
ElseIf  MODE = WarmUp Then
  S_FAN = On R_FAN = On
ElseIf  MODE = PreCool Then
  S_FAN = On R_FAN = On
ElseIf  MODE = NiteHtg Then
  S_FAN = On R_FAN = On
ElseIf  MODE = NiteClg Then
  S_FAN = On R_FAN = On
ElseIf  MODE = FreezeLock Then
  S_FAN = Off R_FAN = On
ElseIf  MODE = SmkLock Then
  S_FAN = Off R_FAN = Off
End If
