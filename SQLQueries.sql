
-- Output screen Team & logo, Captain & nationality

SELECT LOGO.logofilename,
  TEAM.*, 
  (TEAM.nbwins*3+TEAM.nbdraws) AS nbpoints,
  PLAYER.*,
  COUNTRY.ctryname
FROM TEAM JOIN LOGO
ON TEAM.teamcode = LOGO.TEAMLOGO_teamcode
JOIN PLAYER 
ON (TEAM.teamcode = PLAYER.TEAMCPT_teamcode)
JOIN PLAYER_NATIONALITY
ON (PLAYER.plnb = PLAYER_NATIONALITY.PLAYER_plnb)
JOIN COUNTRY
ON (PLAYER_NATIONALITY.COUNTRYPL_ctryid = COUNTRY.ctryid)
WHERE TEAM.teamcode = 'PSV';

-- Join TEAM and PLAYER on the FK to only show captains

-- Output screen Goals of PSV

SELECT GAME.gamenb,
  GAME.TEAM_codehome,
  GAME.homegoals,
  GAME.TEAM_codeaway,
  GAME.awaygoals,
  GOAL.goalmin,
  PLAYER.plfname,
  PLAYER.pllname,
  PLAYER.plnb,
  GOAL.goaltype,
  GOAL.goalassist,
  GOAL.goalvideourl
FROM GAME JOIN GOAL
ON (GAME.gamenb = GOAL.GAME_gamenb AND GAME.TEAM_codehome = GOAL.TEAM_codehome AND  GAME.TEAM_codeaway = GOAL.TEAM_codeaway)
JOIN PLAYER
ON (GOAL.PLAYER_plnb = PLAYER.plnb AND GOAL.TEAMPL_teamcode = PLAYER.TEAMPL_teamcode)

WHERE (GAME.TEAM_codehome = 'PSV' OR GAME.TEAM_codeaway = 'PSV')
AND GAME.gamenb < 5
ORDER BY GAME.gamenb, GOAL.goalmin;

-- Output screen Ranking

Select LOGO.logofilename, 
  TEAM.teamname, 
  TEAM.position, 
  (TEAM.nbwins+TEAM.nbdraws+TEAM.nbloses) AS nbgames, 
  TEAM.nbwins, 
  TEAM.nbdraws, 
  TEAM.nbloses, 
  (TEAM.nbwins*3+TEAM.nbdraws) AS nbpoints
FROM LOGO JOIN TEAM
ON LOGO.TEAMLOGO_teamcode = TEAM.teamcode
ORDER BY nbpoints DESC, TEAM.nbwins DESC, TEAM.teamname
LIMIT 8;

Select LOGO.logofilename, 
  TEAM.teamname, 
  TEAM.position, 
  (TEAM.nbwins+TEAM.nbdraws+TEAM.nbloses) AS nbgames, 
  TEAM.nbwins, 
  TEAM.nbdraws, 
  TEAM.nbloses, 
  (TEAM.nbwins*3+TEAM.nbdraws) AS nbpoints
FROM LOGO JOIN TEAM
ON LOGO.TEAMLOGO_teamcode = TEAM.teamcode
WHERE (TEAM.nbwins*3+TEAM.nbdraws) > 
(SELECT AVG(nbwins*3+nbdraws) FROM TEAM)
ORDER BY nbpoints DESC, TEAM.nbwins DESC, TEAM.teamname
LIMIT 8;

-- Output screen Sponsors 

SELECT LOGO_COMPANY.logocfilename, 
  COMPANY.cname, 
  SPONSORING.sdatesigning, 
  SPONSORING.sendcontract,
  SPONSORING.samount
FROM TEAM JOIN SPONSORING
ON TEAM.teamcode = SPONSORING.TEAMSP_teamcode
JOIN COMPANY
ON SPONSORING.COMPANYSP_cid = COMPANY.cid
JOIN LOGO_COMPANY
ON COMPANY.cid = LOGO_COMPANY.COMPANYLG_cid
WHERE TEAM.teamcode = 'PSV';


