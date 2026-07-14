advancement revoke @s only fossil_frights:hazard_cookie_consumed
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_thief,gamemode=!spectator] run return 0
advancement grant @s only fossil_frights:02_achievements/heists_intentionally_hazardous
function fossil_frights:hazard/start/random_no_security
