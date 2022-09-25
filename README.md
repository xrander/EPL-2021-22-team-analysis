# EPL Season 2021-2022 Season Team Analysis
Exploratory analysis done using postgreSQL and R is used for visualization
![Epl](https://cdnuploads.aa.com.tr/uploads/Contents/2021/05/19/thumbs_b_c_5a5fb63e4f1788db0d57d0d2340a3b13.jpg?v=223210)
## Data Description
Data includes a table of 8 which are available for download at [link](https://github.com/xrander/EPL-2021-22-team-analysis/tree/master/EPL_data)
The table include:

- **defensive stats**
  - Squad: Team name
  - NPl : Number of Players used in the season
  - TotTkl : total number of players tackled
  - TotTklW : Tacleswon
  - Def3rdTck : Tackles in Defensive 3rd
  - Mid3rdTck : Tackles in Middle 3rd
  - Att3rdTck : Tackles in Attacking 3rd
  - TklWvsDrib: Number of dribblers tackled
  - AttTckvsDrib: Number of times dribbled past plus number of tackles
  - TklWvsDribRt: Rate of dribblers tackled. This is dribblers tackled divided by dribblers tackled plus times dribbled past. A minimum of 0.625 dribblers contested per squad game to qualify as a leader
  - PastDribNTck: number of times dribbled past by an opposing player
  - PressTot : number of times applying pressure to opposing players who is receiving, carrying or releasing the ball
  - SuccPress : Successful win of possession after applying pressure within 5 seconds
  - PressRt : percentage of time the squad gained possession within five seconds of applying pressure
  - Def3rdPres : number of times applying pressure to opposing player who is receiving, carrying or releasing the ball in the defensive 3rd
  - Mid3rdPres: umber of times applying pressure to opposing player who is receiving, carrying or releasing the ball in the Middle 3rd
  - Att3rdPres: umber of times applying pressure to opposing player who is receiving, carrying or releasing the ball in the attacking 3rd
  - TotBlocBal : Number of times blocking a ball by standing in its path
  - ShBlocBall : Number of times blocking a shot by standing in its path
  - ShSvBloc : Number of times blocking a shot that was on target, by standing in its path
  - PassBlock :Number of times blocking a pass by standing in its path
  - Inte : Interceptions
  - TklpInt : numbers of players tackled plus number of interceptions
  - Clearance: Clearance
  - Err : Mistakes leading to an opponent shot

- **passing  stats**
  - Squad: Team name
  - NPl : Number of Players used in the season
  - _90s: Minutes Played per 90 minutes
  - CmpTot : Total completed passes
  - AttTot : Attempted passes
  - TotCmpRt : Passes Completion Percentage
  - TotDist : Total distance in yards, that completed passes have traveled in any direction
  - PrgDist : Total distance in yards, that completed passes have traveled towards the opponent's goal
  ==***nb***passes away from opponent's goal are counted as zero progressive yards==
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
  - xA : chances created leading to assists
  - Amxa: Assist minus expected assist.
  - KP : Key passes ( Passes directly lead a shot)
  - one_third_car : Completed passes that enter 1/3 of the pitch closest the goal excluding set pieces
  - PPA : Completed passes in the 18-yard box not including set pieces
  - CrsPA : completed crosses into the 18-yard box not including set peces
  - ProgPs : completed pass into penalty area. Exclusing passes from the defending 40% of the pitch.

- **Squad_Possession_stats**
  - Squad: Team name
  - NPl : Number of Players used in the season
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
  - SuccDribRt : dribble success rate. Minimum 5 dribbles per squad game
  - npdp: Numbers of players dribbled past
  - Megs : Number of times a player dribbled the ball through opposition player's leg (nutmegs)
  - TotCarr : Number of times player controlled the ball with their feet
  - TotDistCarr : Total distances, in yards, a player moved the ball while controlling it with their feet, in any direction
  - PrgDistCarr : Progressive distances Total distances, in yards, a player moved the ball while controlling it with their feet towards the opponents goal
  - ProgCarr : carries that moves the ball towards the opponent's goal at least 5 yards, or nay carry into the penalty area.
  - 1/3Carr : Carries that enter the 1/3 of the pitch closest the goal
  - CPA : Carries into the 18 yard box
  - MisCarr : Number of times a player failed when attempting to gain to control a ball
  - DisCarr : Number of times a player loses control of the ball
  - TargRec : Number of times a player target of an attempting a pass
  - SucRec : Number of times a player successfully received a pass
  - RecRt : Percentage time of a player successfully received a pass
  - ProgRec : Progressive Pass received

- **Squad_shooting_stats**
  - Squad: Team name
  - NPl : Number of Players used in the season
  - _90s: Matches Played in 90min
  - GlsTot : Team Goals scored or allowed
  - TotSh : Team Total Shots excluding penalties
  - TotShTg : Shots on Target excluding penalties
  - SoTgRt : Shots on Target Conversion Rate
  - Sh_per_90 : Shots per 90 minutes
  - SoT_90: Shots on target per 90 min
  - G_per_Sh :Goals per shot
  - G_per_SoT : Goals per shot on target
  - Dist: average distances, from goal of shot
  - FK : shots from free-kick
  - PK : penalty kicks made
  - PKatt: attempted penalty kick
  - xG : expected goals
  - npxG : non-penalty expected goals
  - npxG_per_Sh : non-penalty expected goals per shot
  - GmxG : Goal minus expected goals
  - np_GmxG : Non-penalty goals minus expected goals

- **The_league_table**
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
  - pts_ma: Points per match
  - xG : Team Expected Goals
  - xGA: Team Expected Goals Allowed
  - xGD : Team Expected Goals Differences
  - xGD_per_90 : Team Expected Goals Differences per 90 minutes
  - Attendance : Team Tota Attendances
  - Top Team Scorer: Team Scorer

- **Squad_general_stats**
  - Squad: Team nanme
  - NPl : Number of Players used in the season
  - Age: Average Age of squad weighted by minutes played
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

- **- Squad_goalkeeping_stats**
  - Squad: Team name
  - num_Pl: number of goalkeepers used in the season
  - MP: Match played
  - GATot:Goals against total
  - GA90: Goals against per 90 minute
  - SoTA: Shot on target against
  - Saves: Total saves
  - SaveRt: save percentage
  - W: Win
  - D: Draw
  - L: Loss
  - CS: Clean sheets, playing a full match without the team conceding a goal
  - CSRt: Clean sheet percentage
  - PKatt: Attempted penalty kicks
  - PKA: Penalty allowed
  - PKsv: Penalty saved
  - PKm: Penalty missed
  - SavPenRt: Save penalty percentage

- **- goal shot creation stats**
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

