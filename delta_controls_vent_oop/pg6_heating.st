//Heating Valve and Circulator Control
If MODE = Unoccupied Then
  HTG_V = 0 HTG_CIRC = Off 	         //klap = 0; pump = off
ElseIf  MODE = Occupied Then
  HTG_V = HTGCO 		                //приращение величины AV5 -  Аналоговому выходу
Switch ( HTG_CIRC, HTGCO, 5, 1)     //pump = on если 1 < AV5 < 5
ElseIf  MODE = WarmUp Then	
  HTG_V = 100 HTG_CIRC = On         //если режим WarmUp = on then klap = 100; pump = on
ElseIf  MODE = PreCool Then
  HTG_V = 0 HTG_CIRC = Off          //если режим PreCool = on then klap = 0; pump = off
ElseIf  MODE = NiteHtg Then
  HTG_V = 100 HTG_CIRC = On
ElseIf  MODE = NiteClg Then
  HTG_V = 0 HTG_CIRC = Off
ElseIf  MODE = FreezeLock Then
  HTG_V = 100 HTG_CIRC = On
ElseIf  MODE = SmkLock Then
  HTG_V = 0 HTG_CIRC = Off
End If
