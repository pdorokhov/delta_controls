//Mixed Air and Relief Dampers Control
If MODE = Unoccupied Then
  MAD = 0
ElseIf  MODE = Occupied Then
  MAD = MADCO
ElseIf  MODE = WarmUp Then
  MAD = 0
ElseIf  MODE = PreCool Then
  MAD = MADCO
ElseIf  MODE = NiteHtg Then
  MAD = 0
ElseIf  MODE = NiteClg Then
  MAD = MADCO
ElseIf  MODE = FreezeLock Then
  MAD = 0
ElseIf  MODE = SmkLock Then
  MAD = 0
End If
