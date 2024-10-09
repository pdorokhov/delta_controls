//Assign Virtual Heat and Cool Controllers from SAT_CO
p1_hValve = Round (Scale (p1_PID, 0, 0, 100, 45, 0), 0)      //Lower fraction of SAT_CO to control heating (HTGCO)