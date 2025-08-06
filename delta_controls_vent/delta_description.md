1)	Occupied periods are scheduled by (SCH1) and (CAL1). The Unit starts optimally based on (OS1) and (OS2). The Unit's mode of operation is scheduled via MV1 with the following defined modes: Unoccupied, Occupied, WarmUp, PreCool, NiteHtg, NiteClg, FreezeLock, SmkLock.

2)	During occupied periods the supply and return fans operate continuously via (BO1) & (BO2) respectively.

3)	Supply fan Amps and return fan Amps are monitored by (AI1) and (AI2) respectively.

4)	Room Temperature Controller (CO1) schedules supply air temperature setpoint (AV2) to maintain satisfy space temperature conditions as set by (AV1). Mixed air temperature setpoint (AV3) is scheduled 2 DegF (Adj.) below (AV2) to compensate for fan pickup.

5)	Supply air temperature controller (CO2) is split into two virtual controllers (AV5, Heating) and (AV6, Cooling) to provide sequential non overlapping control of Heating and Cooling functions.

6)	On Demand for heating, heating coil valve virtual controller (AV5) modulates heating coil valve (AO9) to maintain desired supply air temperature as scheduled by (AV2) and as sensed by (AI4). Heating coil circulator (BO3) will start when heating is needed.

7)	On Demand for cooling, cooling coil valve virtual controller (AV6) modulates cooling coil valve (AO10) to maintain desired supply air temperature as scheduled by (AV2) and as sensed by (AI4).
 
8)	Mixed Air temperature, as sensed by (AI3), modulates via Controller (CO3) the Mixed Air Dampers (AO8) to maintain scheduled Mixed Air Temperature Setpoint (AV3). A minimum ventilation position will be maintained as set by (AV4). The mixed air dampers operate on a true economizer mode as determined by (BV1) switched by the Enthalpy comparison of outdoor and return air streams.

9)	Return air temperature and humidity are displayed through (AI5) and (AI6) respectively. Outdoor air temperature and humidity are displayed through (AI10) and (AI11) respectively.

10)	Controller (BO4) during Occupied Mode modulates the humidifier valve (AO7) to satisfy Return Air Humidity conditions as sensed by (AI11) and as set by Humidity Setpoint (AV8)

11)	Air filter condition is monitored by differential pressure transmitter (AI7) located across the filter surface. An alarm will indicate when pressure exceeds limit.
  
12)	Should a low temperature condition be detected by (BI8) located downstream of heating coil, the unit will shut down, requiring manual reset to restart.

13)	Should a smoke condition be detected by Smoke Detector (BI9), located in the return air flow, the unit will shut down, requiring manual reset to restart.

14)	During unoccupied periods the unit will cycle to maintain minimum heating (63 DegF) or maximun cooling (85 DegF) temperature conditions in the space. OA dampers remain closed. 
