-- Active: 1663635897256@@127.0.0.1@5432@project
CREATE TABLE epl_table_22 (
    Rnk SMALLINT,
    Squad VARCHAR(30) PRIMARY KEY,
    MP SMALLINT,
    W SMALLINT,
    D SMALLINT,
    L SMALLINT,
    GF SMALLINT,
    GA SMALLINT,
    GD SMALLINT,
    Pts SMALLINT,
    pts_MP NUMERIC(3,2),
    xG SMALLINT,
    xGA NUMERIC(4,2),
    xGD NUMERIC(4,2) ,
    xGD_per_90 NUMERIC(4,2),
    Attendance BIGINT,
    Top_Team_Scorer VARCHAR(40)
);

COPY epl_table_22
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_table_22.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';');

CREATE TABLE goalkeeping_stats(
    Squad VARCHAR(30) PRIMARY KEY,
    num_pl SMALLINT,
    MP SMALLINT,
    gatot SMALLINT,
    GA90 NUMERIC(3,2),
    SoTA SMALLINT,
    Saves SMALLINT,
    SaveRt NUMERIC(4,2),
    W SMALLINT,
    D SMALLINT,
    L SMALLINT,
    CS SMALLINT,
    CSRt NUMERIC(4,2),
    PKatt SMALLINT,
    PKA SMALLINT,
    PKsv NUMERIC(3,2),
    PKm SMALLINT,
    SavPenRt NUMERIC(4,2)
);

COPY  goalkeeping_stats
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_squad_goalkeeping_22.csv'
WITH (FORMAT CSV, HEADER; DELIMITER ';');

CREATE TABLE defence_stats(
    Squad VARCHAR(30),
    NPl SMALLINT,
    TotTkl SMALLINT,
    TotTklW SMALLINT,
    Def3rdTck SMALLINT,
    Mid3rdTck SMALLINT,
    Att3rdTck SMALLINT,
    TklWvsDrib SMALLINT,
    AttTckvsDrib SMALLINT,
    TklWvsDribRt NUMERIC(4,2),
    PastDribNTck SMALLINT,
    PressTot INTEGER,
    SuccPress INTEGER,
    PressRt NUMERIC(4,2),
    Def3rdPres INTEGER,
    Mid3rdPres INTEGER,
    Att3rdPres INTEGER,
    TotBlocBal SMALLINT,
    ShBlocBall SMALLINT,
    ShSvBloc NUMERIC(4,2),
    PassBlock SMALLINT,
    Inte SMALLINT,
    TklpInt INTEGER,
    Clearance SMALLINT,
    Err SMALLINT
);

COPY defence_stats
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_squad_defensive_actions_22.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';')

CREATE TABLE goal_shot_creation_stats(
    Squad VARCHAR(30),
    NPl SMALLINT,
    SCAT SMALLINT,
    SCA90 NUMERIC(4,2),
    PassLiveSCA SMALLINT,
    PassDeadSCA SMALLINT,
    DribSCA SMALLINT,
    ShSCA SMALLINT,
    FldSCA SMALLINT,
    DefSCA SMALLINT,
    GCAT SMALLINT,
    GCA90 NUMERIC(4,2),
    PassLiveGCA SMALLINT,
    PassDeadGCA SMALLINT,
    DribGCA SMALLINT,
    ShGCA SMALLINT,
    FldGCA SMALLINT,
    DefGCA SMALLINT
);

COPY goal_shot_creation_stats
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_squad_goal_shot_creation_22.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';')

CREATE TABLE passing_stats(
    Squad VARCHAR(30),
    NPl SMALLINT,
    _90s SMALLINT,
    CmpTot NUMERIC(7,2),
    AttTot NUMERIC(7,2),
    TotCmpRt NUMERIC(4,2),
    TotDist NUMERIC(8,2),
    PrgDist NUMERIC(8,2),
    CmpSh SMALLINT,
    AttSh SMALLINT,
    CmpShRt NUMERIC(4,2),
    CmpMed SMALLINT,
    AttMed SMALLINT,
    CmpMedRt SMALLINT,
    CmpLng SMALLINT,
    AttLng SMALLINT,
    CmpLngRt NUMERIC(4,2),
    Ast SMALLINT,
    xA NUMERIC(4,2),
    AmxA NUMERIC(4,2),
    KP SMALLINT,
    one_third_car SMALLINT,
    PPA SMALLINT,
    CrsPA SMALLINT,
    ProgPs SMALLINT
);

COPY defensive_stats
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_squad_passing_stats_22.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';')

CREATE TABLE possession_stats(
    Squad VARCHAR(30),
    NPl SMALLINT,
    Poss NUMERIC(4,2),
    TotTouc NUMERIC(7,2),
    DefPenTouc SMALLINT,
    Def3rdTouc SMALLINT,
    Mid3rdTouc NUMERIC(7,2),
    Att3rdTouc SMALLINT,
    AttPenTouc SMALLINT,
    LiveTouc NUMERIC(7,2),
    SuccDrib SMALLINT,
    AttDrib SMALLINT,
    SuccDribRt NUMERIC(4,2),
    npdp SMALLINT,
    Megs SMALLINT,
    TotCarr NUMERIC(7,2),
    TotDistCarr NUMERIC(8,2),
    PrgDistCarr NUMERIC(8,2),
    ProgCarr SMALLINT,
    one_third_car SMALLINT,
    CPA SMALLINT,
    MisCarr SMALLINT,
    DisCarr SMALLINT,
    TargRec NUMERIC(7,2),
    SucRec NUMERIC(7,2),
    RecRt NUMERIC(4,2),
    ProgRec SMALLINT
);

COPY possession_stats
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_squad_possession_22.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';');

CREATE TABLE shooting_stats(
   Squad VARCHAR(30),
   NPl SMALLINT,
   _90s SMALLINT,
   GlsTot SMALLINT,
   TotSh SMALLINT,
   TotShTg SMALLINT,
   SoTgRt NUMERIC(4,2),
   Sh_per_90 NUMERIC(4,2),
   SoT_per_90 NUMERIC(4,2),
   G_per_Sh NUMERIC(4,2),
   G_per_SoT NUMERIC(4,2),
   Dist NUMERIC(4,2),
   FK SMALLINT,
   PK SMALLINT,
   PKatt SMALLINT,
   xG NUMERIC(4,2),
   npxG SMALLINT,
   npxG_per_Sh NUMERIC(4,2),
   GmxG NUMERIC(4,2),
   npGmxG SMALLINT
);

COPY shooting_stats
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_squad_shooting_22.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';');

CREATE TABLE league_stats(
Squad VARCHAR(30),
NPl SMALLINT,
Age NUMERIC(4,2),
Poss NUMERIC(4,2),
MP SMALLINT,
GlsTot SMALLINT,
AstTot SMALLINT,
GmPKTot SMALLINT,
PKTot SMALLINT,
PKattTot SMALLINT,
CrdYel SMALLINT,
CrdRed SMALLINT,
GlsPer90 NUMERIC(4,2),
AstPer90 NUMERIC(4,2),
GpAPer90 NUMERIC(4,2),
GmPKPer90 NUMERIC(4,2),
GpAmPKPer90 NUMERIC(5,2),
xGTot NUMERIC(4,2),
npxGTot SMALLINT,
xATot NUMERIC(4,2),
npxGpxA NUMERIC(5,2),
xGPer90 NUMERIC(4,2),
xAPer90 NUMERIC(4,2),
xGpxAPer90 NUMERIC(4,2),
npxGPer90 NUMERIC(4,2),
npxGpxAPer90 NUMERIC(4,2)
);

COPY league_stats
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_stats_22.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';')