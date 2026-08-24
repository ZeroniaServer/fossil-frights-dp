execute if score #lava_manual_cooldown ff_hazard_rng matches 1.. run return 0
execute if score lava ff_hazard_active matches 1 run return 0
execute unless predicate fossil_frights:game_state/game_running unless score $heist_round_active ff_game_state matches 1 run return 0
execute positioned -3 71 15 run advancement grant @p[team=ff_thief,gamemode=!spectator,distance=..4] only fossil_frights:02_achievements/heists_intentionally_hazardous
function fossil_frights:hazard/start/lava
scoreboard players set #lava_manual_cooldown ff_hazard_rng 40
