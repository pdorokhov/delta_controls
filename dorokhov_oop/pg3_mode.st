If p1_xStart = Off Then
   p1_ahu_mode = OSTANOV
End If

If p1_ahu_mode = OSTANOV And p1_xStart = On Then
   p1_ahu_mode = RUN
End If

If p1_ahu_mode = RUN Then
    If p1_al_fan = On Or p1_al_fire = On Or p1_al_freeze = On Or p1_al_pump = On Or p1_al_water = On Then
       p1_ahu_mode = BLOCK
    End If
End If

If p1_ahu_mode = OSTANOV And 
   p1_xSeason = off And 
   p1_xFreeze = Off And 
   p1_al_freeze = On And 
   p1_temp_water < 40
Then
   p1_ahu_mode = WARMUP
End If

If p1_ahu_mode = WARMUP And p1_temp_water > 40 Then
   p1_ahu_mode = OSTANOV
End if





If p1_ahu_mode = BLOCK and Once p1_xReset = On Then
   p1_ahu_mode = OSTANOV
End if







