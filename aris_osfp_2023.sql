SELECT player,team, SUM(openplaypass) AS total_open_play_passes
FROM games.aris_osfp_2023
GROUP BY team , player
ORDER BY total_open_play_passes DESC
LIMIT 5;

SELECT team, SUM(openplaypass) AS total_open_play_passes
FROM games.aris_osfp_2023
GROUP BY team; 

SELECT team, sum(unsuccessfultouch) as total_unsuccesful_touches 
FROM games.aris_osfp_2023
group by team;

SELECT player,team, sum(unsuccessfultouch) as total_unsuccesful_touches
FROM games.aris_osfp_2023
GROUP BY team , player
ORDER BY total_unsuccesful_touches DESC
LIMIT 5;

SELECT player,team, effectiveHeadClearance
FROM games.aris_osfp_2023
ORDER BY effectiveHeadClearance desc
LIMIT 1;

SELECT team, sum(possWonDef3rd) as poss_Won_Def3rd
FROM games.aris_osfp_2023
group by team;

select player, team, possWonDef3rd 
FROM games.aris_osfp_2023
order by possWonDef3rd desc
limit 5;

SELECT player, team, 
SUM(aerialWon) AS totalAerialWon,
SUM(duelWon) AS totalDuelWon,
SUM(interception) AS totalInterception,
SUM(timesTackled) AS totalTimesTackled,
SUM(ballRecovery) AS totalBallRecovery,
SUM(blockedPass) AS totalBlockedPass,
SUM(EffectiveBlockedCross) AS totalEffectiveBlockedCross,
SUM(effectiveClearance) AS totalEffectiveClearance,
(SUM(aerialWon) + SUM(duelWon) + SUM(interception) + SUM(timesTackled) + SUM(ballRecovery) + SUM(blockedPass) + SUM(EffectiveBlockedCross) + SUM(effectiveClearance)) AS totalSum
FROM games.aris_osfp_2023
group by PLAYER,TEAM
ORDER BY totalSum desc
limit 1;

SELECT player, team, 
SUM(totalAttAssist) AS totalAttAssist,
SUM(totalScoringAtt) AS totalScoringAtt,
SUM(attemptsIbox) AS totalattemptsIbox,
SUM(attemptsObox) AS totalattemptsObox,
SUM(bigChanceScored) AS totalbigChanceScored,
SUM(goals) AS totalgoals,
SUM(ontargetScoringAtt) AS totalontargetScoringAtt,
SUM(ontargetAttAssist) AS totalontargetAttAssist,
SUM(penAreaEntries) AS totalpenAreaEntries,
SUM(successfulFinalThirdPasses) AS totalsuccessfulFinalThirdPasses,
(SUM(totalAttAssist)+ SUM(totalScoringAtt)+SUM(attemptsIbox) + SUM(attemptsObox) + SUM(bigChanceScored) + SUM(goals) + SUM(ontargetScoringAtt) + SUM(ontargetAttAssist) + SUM(ontargetAttAssist) + SUM(penAreaEntries) + SUM(successfulFinalThirdPasses) ) AS totalSum
FROM games.aris_osfp_2023
WHERE team = 'ARIS' AND position = 'Midfield'
group by PLAYER,TEAM 
ORDER BY totalSum desc
limit 1;







