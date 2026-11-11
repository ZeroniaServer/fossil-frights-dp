tag @e[type=minecraft:armor_stand,tag=ff_hazard_compass_target] add ff_compass_stale

execute unless predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:game_state/hazard_active/security positioned -28 71 39 run function fossil_frights:locator_bar/markers/refresh {selector:"tag=ff_hazard_compass_target,tag=ff_hazard_security",tags:"\"ff_hazard_compass_target\",\"ff_hazard_security\"",style:"hazard"}
execute unless predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:game_state/game_running if score $timer_started ff_day matches 1 if score #dinonog_bar ff_dinonog matches ..0 positioned 2.0625 70.0 49.5 run function fossil_frights:locator_bar/markers/refresh {selector:"tag=ff_hazard_compass_target,tag=ff_hazard_dinonog_lock",tags:"\"ff_hazard_compass_target\",\"ff_hazard_dinonog_lock\"",style:"hazard"}

execute if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 1 if predicate fossil_frights:game_state/hazard_active/security if entity @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator,limit=1] positioned -28 71 39 run function fossil_frights:locator_bar/markers/refresh {selector:"tag=ff_hazard_compass_target,tag=ff_hazard_security",tags:"\"ff_hazard_compass_target\",\"ff_hazard_security\"",style:"hazard"}

kill @e[type=minecraft:armor_stand,tag=ff_hazard_compass_target,tag=ff_compass_stale]
