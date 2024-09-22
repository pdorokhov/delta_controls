### I/O and Support Objects:

AO(4):		AO7	    HUM_V		Humidifier Steam Valve		
            AO8	    MAD		    Mixed Air Dampers
            AO9	    HTG_V		Heating Coil Valve
		    AO10	CLG_V	    Cooling Coil Valve

BO(3): 		BO1	    S_FAN		Supply Fan
		    BO2	    R_FAN		Return Fan
		    BO3	    HTG_CIRC	Heating Coil Circulator

AI(13):	    AI101	RT1		    Space Temperature 1
            AI103	RH1		    Space Humidity 1
            AI201	RT1		    Space Temperature 2
            AI203	RH1		    Space Humidity 2
            AI1	    S_FAN_A	    Supply Fan Amps
            AI2	    R_FAN_A	    Return Fan Amps
            AI3	    MAT		    Mixed Air Temperature
            AI4	    SAT		    Supply Air Temperature
            AI5	    RAT		    Return Air Temperature
            AI6	    RAH		    Return Air Humidity
            AI7	    FILT	    Filter Clogged Indication Xmttr
            AI10	OAT		    Outside Air Temperature
		    AI11	OAH		    Outside Air Humidity

BI(2):		BI8	    FZ		    Low Temp. Protection, Requires Manual Reset on Trip
		    BI9	    SMK		    Return Air Smoke Detection, Manual Reset on Trip
		
AV(12):	    AV1	    RT_SP		Room Temperature Setpoint
            AV2	    SAT_SP	    Supply Air Temperature Setpoint
            AV3	    MAT_SP	    Supply Air Temperature Setpoint
            AV4         		Minimum Outdoor Air Percent
            AV5	    HTGCO	    Virtual HTG Control
            AV6	    CLGCO		Virtual CLG Control
            AV7	    MADCO	    Virtual MAD Control
            AV8	    RAH_SP	    Return Air Humidity Setpoint
            AV9	    RA_ENTH	    Return Air Enthalpy
            AV10	OA_ENTH	    Outdoor Air Enthalpy
            AV11	RT_AVG	    Room Temperature Average
            AV12	RH_AVG	    Room Humidity Average

BV(4)	    BV1	    ECONO	    Economizer Changeover Flag
            BV2	    S_FAN_S	    Supply Fan Status Flag
            BV3	    R_FAN_S	    Return Fan Status Flag
            BV3	    CP_FLAG	    Central Plant Interlock Flag

MV(1)	    MV1	    MODE		Air Handling Unit Mode

SCH(1):	    SCH1	SCHED		Schedule for Occupancy

CAL(1):		CAL1	CAL		    Calendar for Occupancy

OS(2):		OS1	    OS_HTG	    Heating Optimum Start for Occupancy
		    OS2	    OS_CLG	    Cooling Optimum Start for Occupancy

 
CO(7):		CO1	    AF_CO	    Supply Air Flow Temperature Reset Controller Loop
            CO2	    SAT_CO	    Supply Air Temperature Controller Loop
            CO3	    MAT_CO	    Mixed Air Temperature Controller Loop
            CO4	    RAH_CO	    Return Air Humidity Controller Loop

TL(8):		TL1	    RT_TL		Room Temperature Log
            TL2	    SAT_TL	    Supply Air Temperature Log
            TL3	    MAT_TL	    Mixed Air Temperature Log
            TL4	    RAH_TL	    Return Air Humidity Log
            	    TL5	RT_SP_TL	Room Temperature Setpoint Log
            TL6	    SAT_SP_TL	Supply Air Temperature Setpoint Log
            TL7	    MAT_SP_TL	Mixed Air Temperature Setpoint Log
            TL8	    RAH_SP_TL	Return Air Humidity Setpoint Log

MT(5):		MT1	    AHU_MT	    Air Handling Unit Multitrend
            MT2	    RT_MT		Room Temperature Multitrend
            MT3	    SAT_MT	    Supply Air Temperature Multitrend
            MT4	    MAT_MT	    Mixed Air Temperature Multitrend
            MT5	    RAH_MT	    Return Air Humidity Multitrend