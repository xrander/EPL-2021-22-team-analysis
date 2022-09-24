# EPL Season 2021-2022 Season Team Analysis
Exploratory analysis done using postgreSQL and R is used for visualization
![Epl](https://cdnuploads.aa.com.tr/uploads/Contents/2021/05/19/thumbs_b_c_5a5fb63e4f1788db0d57d0d2340a3b13.jpg?v=223210)
## Data Description
Data includes a table of 8 which are available for download at [link](https://github.com/xrander/EPL-2021-22-team-analysis/tree/master/EPL_data)
The table include:

- **defensive stats**
  - Squad: Team
  - NPl : Number of Players
  - TotTkl : Total tackles
  - TotTklW : Tacleswon
  - Def3rdTck : Tackles in Defensive 3rd
  - Mid3rdTck : Tackles in Middle 3rd
  - Att3rdTck : Tackles in Attacking 3rd
  - TklWvsDrib
  - AttTckvsDrib
  - TklWvsDribRt
  - PastDribNTck
  - PressTot : Total Pressures
  - SuccPress : Successful Pressures
  - PressRt : Successful Pressure Rate
  - Def3rdPres : Pressures in Defensive 3rd
  - Mid3rdPres: Pressures in Middle 3rd
  - Att3rdPres: Pressures in Attacking 3rd
  - TotBlocBal : Number of times blocking a ball by standing in its path
  - ShBlocBall : Number of times blocking a shot by standing in its path
  - ShSvBloc : Number of times blocking a shot that was on target, by standing in its path
  - PassBlock :Number of times blocking a pass by standing in its path
  - Int : Interceptions
  - TklpInt : Tackles and interceptions
  - Clear: Clearances
  - Err : Errors

- **passing  stats**
  - Squad: Team
  - NPl : Number of Players
  - 90s: MatchedPlayed in 90min
  - CmpTot : Total completed passes
  - AttTot : Attempted passes
  - TotCmpRt : Passes Completion Percentage
  - TotDist : Total distance passes
  - PrgDist : Progressive distance passes
  - CmpSh : Short completed passes
  - AttSh : Attempted short passes
  - CmpShRt : Short completed passes percentage
  - CmpMed : Medium completed passes
  - AttMed : Attempted medium passes
  - CmpMedRt : Medium completed passes percentage
  - CmpLng : Long completed passes
  - AttLng : Attempted long passes
  - CmpLngRt : Long completed passes percentage
  - Ast : Total assists
  - xA : Expected assistes
  - KP : Key passes ( Passes directly lead a shot)
  - 1/3Pass : Completed passes the enter 1/3 of the pitch closest the goal
  - PPA : Completed passes in the 18-yard box
  - CrsPA : Crosses pases
  - ProgPs : Progressive passes

**- possession stats**
  - Squad: Team
  - NPl : Number of Players
  - Poss : Team Possesion
  - TotTouch : Total Touches
  - DefPenTouc : Touches in Defensive penalty area
  - Def3rdTouc : Touches in Defensive 3rd
  - Mid3rdTouc : Touches in Middle 3rd
  - Att3rdTouc : Touches in Attacking 3rd
  - AttPenTouc : Touches in Attacking penalty area
  - LiveTouc : Live-ball touches
  - SuccDrib : Successful dribbles
  - AttDrib : Dribbles attempted
  - SuccDribRt : Minimum 5 dribbles per squad game
  - Megs : Number of times a player dribbled the ball through opposition player's leg
  - TotCarr : Number of times player controlled the ball with their feet
  - TotDistCarr : Total distances, in yards, carries
  - PrgDistCarr : Progressive distances carries
  - ProgCarr : Progressive carries
  - 1/3Carr : Carries that enter the 1/3 of the pitch closest the goal
  - CPA : Carries into the 18 yard box
  - MisCarr : Number of times a player failed when attempting to gain to control a ball
  - DisCarr : Number of times a player loses control of the ball
  - TargRec : Number of times a player target of an attempting a pass
  - SucRec : Number of times a player successfully received a pass
  - RecRt : Percentage time of a player successfully received a pass
  - ProgRec : Progressive Pass received

**- shooting stats**
  - Squad: Team
  - NPl : Number of Players
  - 90s: MatchedPlayed in 90min
  - GlsTot : Team Goals
  - TotSh : Team Total Shots
  - TotShTg : Shots on Target
  - SoTgRt : Shots on Target Conversion Rate
  - Sh/90 : Shots per 90 minutes
  - SoT/90: Shots on target per 90 min
  - G/Sh :Goals per shot
  - G/SoT : Goals per shot on target
  - Dist: average distances, from goal of shot
  - FK : free-kick
  - PK : penalty kick made
  - PKatt attempted penalty kick
  - xG : expected goals
  - npxG : non-penalty expected goals
  - npxG/Sh : non-penalty expected goals per shot
  - GmxG : Goal minus expected goalsnp
  - GmxG : Non-penalty goals minus expected goals

**- the league table**
  - Rnk = League rank
  - Squad: Team
  - MP: Match Played
  - W: Team Wins
  - D: Team Draws
  - L : Team: Team Losts
  - GF: Team Goals
  - GA: Team Goal Conceded
  - GD: Team Goal Difference(Average)
  - Pts: Team Season Points
  - xG : Team Expected Goals
  - xGA: Team Expected Goals Allowed
  - xGD : Team Expected Goals Differences
  - xGD : Team Expected Goals Differences per 90 minutes
  - Attendance : Team Tota Attendances
  - Top Team Scorer: Team Scorer

**- teams general stats**
  - Squad: Team
  - NPl : Number of Players
  - Age: Average Age
  - Poss: Team Average Possession
  - GlsTot: Team Goals
  - AstTot : Team Assists
  - GmPKTot : Goal minus Penalty Kick
  - PKTot : Penalty Kicks made
  - PKattTot : Attempted penalty kick
  - CrdYel : Yellow cards
  - CrdRed : Red cards
  - GlsPer90 : Goals per 90 minutes
  - AstPer90 : Assists per 90 min
  - GpAPer90 : Goal + Asists
  - GmPKPer90 : Goals -Penalty Kick
  - GpAmPKPer90 : (Goals + Assists)- Penalty kick
  - xGTot : Expected goals
  - npxGTot : Non-penalty expected goals
  - Tot : Expected assists
  - npxGpxATot : Non-penalty expected goals + expected assists
  - xGPer90 : Expected goals per 90 min
  - xAPer90 : Expected assists per 90 min
  - xGpxAPer90 : (Expected goals + Expected assists) per 90 min
  - npxGPer90 : Non-penalty expected goals per 90 min
  - npxGxAPer90 : (Non-penalty expected goals+ expected assists) per 90 min

**- goalkeeping stats**
  - Squad: Team name
  - num_Pl: number of goalkeepers used in the season
  - MP: Match played
  - GATot:Goals allowed
  - GA90: Goals allowed per 90 minute
  - SoTA: Shot on target against
  - Saves: Total saves
  - SaveRt:
  - W: Win
  - D: Draw
  - L: Loss
  - CS: 
  - CSRt:
  - PKatt: Attempted penalty
  - PKA: Penalty allowed
  - PKsv: Penalty saved
  - PKm: Penalty missed
  - SavPenRt: Save penalty rate

**- goal shot creation stats**
  - Squad: Team
  - NPl : Number of Players
  - SCAT: Total Shot Creating Actions
  - SCA90: Shot Creating Actions per 90 min
  - PassLiveSCA: Completed live-ball pass that lead a shot attempt
  - DeadLiveSCA: Completed dead-ball pass that lead a shot attempt
  - DribSCA : Successful dribbles that lead a shot attempt
  - ShSCA: Shots that lead another shot attempt
  - FldSCA: Foulds drawn that lead a shot attempt
  - DefSCA: Defensive actions that lead a shot attempt
  - GCAT: Total Goal Creating Actions
  - GCA90: Goal Creating Actions per 90 min
  - PassLiveGCA: Completed live-ball pass that lead to a goal attempt
  - DeadLiveGCA: Completed dead-ball pass that lead to a goal attempt
  - DribGCA : Successful dribbles that lead to a shot attempt
  - ShGCA: Shots that lead to another goal attempt
  - FldGCA: Foulds draw that lead a goal attempt
  - DefGCA: Defensive actions that lead to a goal attempt



## Data source
Data obtained from https://www.kaggle.com/datasets/mechatronixs/20212022-season-england-premier-league-team-data.
The data is publicly available to all.

