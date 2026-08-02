# Macro argument: {amount:<1250|1500|1750|2000>}
$scoreboard players set #heist_goal ff_heist $(amount)
scoreboard players set $heist_challenge_all ff_heist 0
function fossil_frights:messages/heists/challenge_set
