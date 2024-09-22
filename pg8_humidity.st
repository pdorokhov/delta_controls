//Humidity Valve Control
If MODE = Unoccupied Then
  HUM_V = 0
ElseIf  MODE = Occupied Then
  HUM_V = RAH_CO
ElseIf  MODE = WarmUp Then
  HUM_V = 0
ElseIf  MODE = PreCool Then
  HUM_V = 0
ElseIf  MODE = NiteHtg Then
  HUM_V = 0
ElseIf  MODE = NiteClg Then
  HUM_V = 0
ElseIf  MODE = FreezeLock Then
  HUM_V = 0
ElseIf  MODE = SmkLock Then
  HUM_V = 0
End If
