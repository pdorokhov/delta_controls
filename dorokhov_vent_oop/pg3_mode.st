If p1_xStart = Off Then
   p1_ahu_mode = OSTANOV
End If

If p1_ahu_mode = OSTANOV And p1_xStart = On And p1_xBlock_unit = Off Then
   p1_ahu_mode = RUN
End If

IfOnce p1_ahu_mode = RUN Then
       p1_PID.Bias = 100
End If

If p1_xBlock_unit = On Then
   p1_ahu_mode = BLOCK
End If


If p1_ahu_mode = OSTANOV And p1_xSeason = Off And p1_xFreeze = Off And p1_al_freeze = On And p1_temp_water < 40 Then
   p1_ahu_mode = WARMUP
End If

If p1_ahu_mode = WARMUP And p1_temp_water > 40 Then
   p1_ahu_mode = OSTANOV
End If

If p1_ahu_mode = BLOCK Then
    IfOnce p1_xReset = On Then
           p1_ahu_mode = OSTANOV
           p1_xBlock_unit = Off
           p1_al_fan = Off
            p1_al_fire = Off
            p1_al_freeze = Off
            p1_al_pump = Off
            p1_al_water = Off
    End If
End If

If p1_xSeason = On Then
   p1_hValve = 0
End If





