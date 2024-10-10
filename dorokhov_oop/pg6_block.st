If p1_al_fan = On Or p1_al_fire = On Or p1_al_freeze = On Or p1_al_pump = On Or p1_al_water = On Then
   p1_xBlock_unit = On
End If

//freezing ALARM
If p1_xFan = On Then
  If (p1_temp_water < 10) Or (p1_temp_air <= 5) Then
      p1_al_freeze = On
      p1_hValve = 100
      p1_xPump = On
  End If
End If

If p1_xFreeze = On Then
   p1_al_freeze = On
   p1_hValve = 100
   p1_xPump = On
End If

//motor ALARM
If p1_xFan OnFor 30S And p1_xFlow_air OffFor 10S Then
   p1_al_fan = On
End If