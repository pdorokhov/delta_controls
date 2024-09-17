//start unit from box

p1_xStart = p1_xAuto
p1_xBelimo = p1_xStart
p1_xPump = Not p1_xSeason

If p1_xStart = Off And p1_xSeason = Off Then
   p1_hValve = p1_PID_return_water
End If

//block_unit

If p1_al_fan Or p1_al_fire Or p1_al_freeze Or p1_al_pump Or p1_al_water Then
   p1_xBlock_unit = On
   p1_xBelimo = off
End If

//p1_xBelimo = p1_xBlock_unit


If p1_xBlock_unit = On And p1_xSeason = Off Then
   p1_hValve = p1_PID_return_water
End If

 If p1_xBlock_unit = On And p1_xSeason = On Then
    p1_hValve = 0
End If

//start_unit

p1_xFan = p1_xBelimo OnFor 10S
If p1_xBelimo = On Then p1_hValve = p1_PID End If

//freezing ALARM

If p1_xBelimo = On Then
  If (p1_temp_water < 10) Or (p1_temp_air <= 5) Or (p1_xFreeze = On) Then
      p1_al_freeze = On
      p1_hValve = 100
      p1_xPump = On
      p1_xBelimo = Off
  End If
End If

If (p1_temp_water > 40) And (p1_al_freeze = On) And (p1_xFreeze = Off) Then
    p1_hValve = p1_PID_return_water
 End If

 //motor ALARM
 //heat_pump ALARM

 //reseting ALARMS

IfOnce p1_xReset = On Then
       p1_al_fan = Off
       p1_al_fire = Off
       p1_al_freeze = Off
       p1_al_pump = Off
       p1_al_water = Off
       p1_xBlock_unit = Off
 End If

 //ostanov

 If p1_xSeason = Off Then
    If p1_sch = Off Then
       p1_xBelimo = Off
       p1_hValve = p1_PID_return_water
    End If
 Else
    If p1_sch = Off Then
       p1_xBelimo = Off
    End If
  End If
