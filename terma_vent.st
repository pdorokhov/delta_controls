VAR
    p1_al_fan:          BOOL;    (* alarm fan  *)
    p1_al_fire:         BOOL;    (* alarm fire *)
    p1_al_freeze:       BOOL;    (* alarm freeze *)
    p1_al_pump:         BOOL;    (* alarm pump *)
    p1_al_water:        BOOL;    (* alarm return water *)

    p1_hValve:          INT;     (* heat valve task *)
    p1_setpoint_air:    INT;     (* air temperature setpoint *)
    p1_setpoint_water:  INT;     (* water temperature setpoint *)

    p1_temp_air:        INT;     (* air temperature sensor *)
    p1_temp_water:      INT;     (* water temperature sensor *)

    p1_xAuto:           BOOL;   (* auto switch *)          
    p1_xBelimo:         BOOL;   (* damper start *)
    p1_xBlock_unit:     BOOL;   (* blocking variable *)
    p1_xFan:            BOOL;   (* motor start *)
    p1_xFlow_air:       BOOL;   (* air flow sensor *)
    p1_xFlow_water:     BOOL;   (* water flow sensor *)
    p1_xFreeze:         BOOL;   (* freeze sensor *)
    p1_xPump:           BOOL;   (* pump start *)
    p1_xReset:          BOOL;   (* alarm reset button *)
    p1_xSeason:         BOOL;   (* season change (off - winter, on - summer) *)
    p1_xStart:          BOOL;   (* primary start *)

    p1_sch:             SCH;    (* schedule *)
END_VAR

//init
p1_xStart = p1_xAuto
p1_xBelimo = p1_xStart
p1_xPump = Not p1_xSeason

If p1_xAuto = Off Then
   p1_ahu_mode = ostanov
End If


If p1_xStart = Off And p1_xSeason = Off Then
   p1_hValve = p1_PID_return_water
End If

//block_unit
If p1_al_fan = On Or p1_al_fire = On Or p1_al_freeze = On Or p1_al_pump = On Or p1_al_water = On Then
   p1_xBlock_unit = On
   p1_xBelimo = Off
   p1_ahu_mode = BLOCK
End If

If p1_xBlock_unit = On And p1_xSeason = Off Then
   p1_hValve = p1_PID_return_water
End If

 If p1_xBlock_unit = On And p1_xSeason = On Then
    p1_hValve = 0
End If

//start_unit
p1_xFan = p1_xBelimo OnFor 10S
If p1_xBelimo = On Then
   p1_hValve = p1_PID
   p1_ahu_mode = RUN
End If

//freezing ALARM
If p1_xBelimo = On Then
  If (p1_temp_water < 10) Or (p1_temp_air <= 5) Then
      p1_al_freeze = On
      p1_hValve = 100
      p1_xPump = On
      p1_xBelimo = Off
  End If
End If

If p1_xFreeze = On Then
   p1_al_freeze = On
   p1_hValve = 100
   p1_xPump = On
End If

If (p1_xFreeze = Off) And (p1_al_freeze = On) And (p1_temp_water < 40) Then
    p1_hValve = 100
    p1_ahu_mode = WARMUP
    p1_xBelimo = Off
 End If

//motor ALARM
If p1_xFan OnFor 30S And p1_xFlow_air OffFor 10S Then
   p1_al_fan = On
End If


//pump ALARM
If p1_xSeason OffFor 10S And p1_xFlow_water OffFor 30S Then
   p1_al_pump = On
End If


If p1_xSeason = On Then
   p1_hValve = 0
End If

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
       p1_ahu_mode = OSTANOV
       p1_hValve = p1_PID_return_water
    End If
 Else
    If p1_sch = Off Then
       p1_xBelimo = Off
       p1_ahu_mode = OSTANOV
    End If
  End If
