-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-12-09 08:33:13.343

-- tables
-- Table: COMPANY
CREATE TABLE COMPANY (
    cid int NOT NULL,
    cname varchar(40) NOT NULL,
    cstreet varchar(50) NOT NULL,
    czip varchar(10) NOT NULL,
    ccity varchar(20) NOT NULL,
    cfield varchar(20) NOT NULL,
    CONSTRAINT COMPANY_pk PRIMARY KEY (cid)
);

-- Table: COUNTRY
CREATE TABLE COUNTRY (
    ctryid int NOT NULL,
    ctryname varchar(20) NOT NULL,
    ctrycontinent varchar(20) NOT NULL,
    CONSTRAINT COUNTRY_pk PRIMARY KEY (ctryid)
);

-- Table: GAME
CREATE TABLE GAME (
    gamenb int NOT NULL,
    gamedate date NOT NULL,
    gametime time NOT NULL,
    homegoals int NOT NULL,
    awaygoals int NOT NULL,
    reffname varchar(20) NOT NULL,
    reflname varchar(20) NOT NULL,
    nbspect int NOT NULL,
    TEAM_codehome char(3) NOT NULL,
    TEAM_codeaway char(3) NOT NULL,
    CONSTRAINT GAME_pk PRIMARY KEY (gamenb,TEAM_codehome,TEAM_codeaway)
);

-- Table: GOAL
CREATE TABLE GOAL (
    goalid int NOT NULL,
    goalmin int NOT NULL,
    goalassist varchar(20) NOT NULL,
    goaltype varchar(20) NOT NULL,
    goalvideourl varchar(100) NOT NULL,
    GAME_gamenb int NOT NULL,
    PLAYER_plnb int NOT NULL,
    TEAM_codehome char(3) NOT NULL,
    TEAM_codeaway char(3) NOT NULL,
    TEAMPL_teamcode char(3) NOT NULL,
    CONSTRAINT GOAL_pk PRIMARY KEY (goalid,GAME_gamenb,PLAYER_plnb)
);

-- Table: LOGO
CREATE TABLE LOGO (
    logoid int NOT NULL,
    logofilename varchar(50) NOT NULL,
    logodatecreation date,
    TEAMLOGO_teamcode char(3) NOT NULL,
    CONSTRAINT LOGO_pk PRIMARY KEY (logoid)
);

-- Table: LOGO_COMPANY
CREATE TABLE LOGO_COMPANY (
    logocid int NOT NULL,
    logocfilename varchar(50) NOT NULL,
    logocdatecreation date,
    COMPANYLG_cid int NOT NULL,
    CONSTRAINT LOGO_COMPANY_pk PRIMARY KEY (logocid)
);

-- Table: PLAYER
CREATE TABLE PLAYER (
    plnb int NOT NULL,
    plfname varchar(20) NOT NULL,
    plonames varchar(40),
    pllname varchar(20) NOT NULL,
    pldob date NOT NULL,
    plposition varchar(20) NOT NULL,
    plnbgames int NOT NULL,
    plnbgoals int NOT NULL,
    plnbassists int NOT NULL,
    plredcards int NOT NULL,
    plyellowcards int NOT NULL,
    TEAMPL_teamcode char(3) NOT NULL,
    TEAMCPT_teamcode char(3),
    CONSTRAINT PLAYER_pk PRIMARY KEY (plnb,TEAMPL_teamcode)
);

-- Table: PLAYER_NATIONALITY
CREATE TABLE PLAYER_NATIONALITY (
    PLAYER_plnb int NOT NULL,
    COUNTRYPL_ctryid int NOT NULL,
    TEAMPL_teamcode char(3) NOT NULL,
    CONSTRAINT PLAYER_NATIONALITY_pk PRIMARY KEY (PLAYER_plnb,COUNTRYPL_ctryid)
);

-- Table: SPONSORING
CREATE TABLE SPONSORING (
    sid int NOT NULL,
    sdatesigning date,
    sendcontract date,
    samount int,
    COMPANYSP_cid int NOT NULL,
    TEAMSP_teamcode char(3) NOT NULL,
    CONSTRAINT SPONSORING_pk PRIMARY KEY (sid,COMPANYSP_cid,TEAMSP_teamcode)
);

-- Table: STAFF_MEMBER
CREATE TABLE STAFF_MEMBER (
    smid int NOT NULL,
    smfname varchar(20) NOT NULL,
    smoname varchar(40),
    smlname varchar(20) NOT NULL,
    smdob date NOT NULL,
    smfunction varchar(20) NOT NULL,
    TEAMSTAFF_teamcode char(3) NOT NULL,
    TEAMMNG_teamcode char(3),
    CONSTRAINT STAFF_MEMBER_pk PRIMARY KEY (smid,TEAMSTAFF_teamcode)
);

-- Table: STAFF_NATIONALITY
CREATE TABLE STAFF_NATIONALITY (
    STAFF_MEMBER_smid int NOT NULL,
    COUNTRYSTAFF_ctryid int NOT NULL,
    TEAMSTAFF_teamcode char(3) NOT NULL,
    CONSTRAINT STAFF_NATIONALITY_pk PRIMARY KEY (STAFF_MEMBER_smid,COUNTRYSTAFF_ctryid)
);

-- Table: TEAM
CREATE TABLE TEAM (
    teamcode char(3) NOT NULL,
    teamname varchar(20) NOT NULL,
    datefoundation date NOT NULL,
    stadium varchar(20) NOT NULL,
    city varchar(20) NOT NULL,
    website varchar(50) NOT NULL,
    nbtitles int NOT NULL,
    nbwins int NOT NULL,
    nbdraws int NOT NULL,
    nbloses int NOT NULL,
    position int NOT NULL,
    CONSTRAINT TEAM_pk PRIMARY KEY (teamcode)
);

-- foreign keys
-- Reference: awayteam (table: GAME)
ALTER TABLE GAME ADD CONSTRAINT awayteam FOREIGN KEY awayteam (TEAM_codeaway)
    REFERENCES TEAM (teamcode);

-- Reference: captain (table: PLAYER)
ALTER TABLE PLAYER ADD CONSTRAINT captain FOREIGN KEY captain (TEAMCPT_teamcode)
    REFERENCES TEAM (teamcode);

-- Reference: companylogo (table: LOGO_COMPANY)
ALTER TABLE LOGO_COMPANY ADD CONSTRAINT companylogo FOREIGN KEY companylogo (COMPANYLG_cid)
    REFERENCES COMPANY (cid);

-- Reference: countrynationalityofplayer (table: PLAYER_NATIONALITY)
ALTER TABLE PLAYER_NATIONALITY ADD CONSTRAINT countrynationalityofplayer FOREIGN KEY countrynationalityofplayer (COUNTRYPL_ctryid)
    REFERENCES COUNTRY (ctryid);

-- Reference: countrynationalityofstaff (table: STAFF_NATIONALITY)
ALTER TABLE STAFF_NATIONALITY ADD CONSTRAINT countrynationalityofstaff FOREIGN KEY countrynationalityofstaff (COUNTRYSTAFF_ctryid)
    REFERENCES COUNTRY (ctryid);

-- Reference: goalgame (table: GOAL)
ALTER TABLE GOAL ADD CONSTRAINT goalgame FOREIGN KEY goalgame (GAME_gamenb,TEAM_codehome,TEAM_codeaway)
    REFERENCES GAME (gamenb,TEAM_codehome,TEAM_codeaway);

-- Reference: hometeam (table: GAME)
ALTER TABLE GAME ADD CONSTRAINT hometeam FOREIGN KEY hometeam (TEAM_codehome)
    REFERENCES TEAM (teamcode);

-- Reference: manager (table: STAFF_MEMBER)
ALTER TABLE STAFF_MEMBER ADD CONSTRAINT manager FOREIGN KEY manager (TEAMMNG_teamcode)
    REFERENCES TEAM (teamcode);

-- Reference: playernationality (table: PLAYER_NATIONALITY)
ALTER TABLE PLAYER_NATIONALITY ADD CONSTRAINT playernationality FOREIGN KEY playernationality (PLAYER_plnb,TEAMPL_teamcode)
    REFERENCES PLAYER (plnb,TEAMPL_teamcode);

-- Reference: scorer (table: GOAL)
ALTER TABLE GOAL ADD CONSTRAINT scorer FOREIGN KEY scorer (PLAYER_plnb,TEAMPL_teamcode)
    REFERENCES PLAYER (plnb,TEAMPL_teamcode);

-- Reference: sponsorcompany (table: SPONSORING)
ALTER TABLE SPONSORING ADD CONSTRAINT sponsorcompany FOREIGN KEY sponsorcompany (COMPANYSP_cid)
    REFERENCES COMPANY (cid);

-- Reference: staffnationality (table: STAFF_NATIONALITY)
ALTER TABLE STAFF_NATIONALITY ADD CONSTRAINT staffnationality FOREIGN KEY staffnationality (STAFF_MEMBER_smid,TEAMSTAFF_teamcode)
    REFERENCES STAFF_MEMBER (smid,TEAMSTAFF_teamcode);

-- Reference: staffteam (table: STAFF_MEMBER)
ALTER TABLE STAFF_MEMBER ADD CONSTRAINT staffteam FOREIGN KEY staffteam (TEAMSTAFF_teamcode)
    REFERENCES TEAM (teamcode);

-- Reference: teamlogo (table: LOGO)
ALTER TABLE LOGO ADD CONSTRAINT teamlogo FOREIGN KEY teamlogo (TEAMLOGO_teamcode)
    REFERENCES TEAM (teamcode);

-- Reference: teamplayer (table: PLAYER)
ALTER TABLE PLAYER ADD CONSTRAINT teamplayer FOREIGN KEY teamplayer (TEAMPL_teamcode)
    REFERENCES TEAM (teamcode);

-- Reference: teamsponsor (table: SPONSORING)
ALTER TABLE SPONSORING ADD CONSTRAINT teamsponsor FOREIGN KEY teamsponsor (TEAMSP_teamcode)
    REFERENCES TEAM (teamcode);

-- End of file.

