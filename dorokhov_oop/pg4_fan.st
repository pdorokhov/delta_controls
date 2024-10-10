If p1_ahu_mode = RUN Then
   p1_xBelimo = On
   p1_xFan = p1_xBelimo OnFor 10S
ElseIf 
   p1_ahu_mode = OSTANOV Then
   p1_xFan = Off
   p1_xBelimo = Off
ElseIf 
   p1_ahu_mode = BLOCK Then
   p1_xFan = Off
   p1_xBelimo = Off
ElseIf 
   p1_ahu_mode = WARMUP Then
   p1_xFan = Off
   p1_xBelimo = Off
End If
