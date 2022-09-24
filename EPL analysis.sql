-- Active: 1663635897256@@127.0.0.1@5432@project
CREATE TABLE epl_table_22(
    Rnk SMALLINT,
    Squad VARCHAR(100),
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
    xGDNUMERIC(4,2) ,
    xGD_per_90 NUMERIC(3,2),
    Attendance BIGINT,
    Top_Team_Scorer VARCHAR(40)
);

COPY epl_table_22
FROM 'C:\Users\aduol\Downloads\SQL DATA SET\EPL-2021-22-team-analysis\EPL_data\england_premier_league_table_22.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';')
