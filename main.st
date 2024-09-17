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
p1_al_fan = p1_xFan OnFor 30S And p1_xFlow_air OffFor 75S

//heat_pump ALARM
p1_al_pump = p1_xSeason offFor 10s and p1_xFlow_water offFor30s

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
