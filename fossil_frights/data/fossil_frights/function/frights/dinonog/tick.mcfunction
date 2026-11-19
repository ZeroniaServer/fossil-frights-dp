execute unless predicate fossil_frights:game_state/heist_mode_active if score $day_active ff_day matches 1 if score $timer_started ff_day matches 1 if score $timer_frozen ff_day matches 0 if score #dinonog_bar ff_dinonog matches 1.. run scoreboard players remove #dinonog_bar ff_dinonog 1
execute if score #dinonog_bar ff_evilnog matches 1.. run scoreboard players remove #dinonog_bar ff_evilnog 1

execute if predicate fossil_frights:game_state/heist_mode_active if score #dinonog_display ff_dinonog < #dinonog_bar ff_dinonog run scoreboard players add #dinonog_display ff_dinonog 2
execute if predicate fossil_frights:game_state/heist_mode_active if score #dinonog_display ff_dinonog > #dinonog_bar ff_dinonog run scoreboard players remove #dinonog_display ff_dinonog 2
execute if predicate fossil_frights:game_state/heist_mode_active if score #dinonog_bar ff_dinonog matches 0 if score #dinonog_display ff_dinonog matches ..0 run scoreboard players set #dinonog_display ff_dinonog 0
execute if predicate fossil_frights:game_state/heist_mode_active if score #dinonog_bar ff_dinonog matches 100 if score #dinonog_display ff_dinonog matches 101.. run scoreboard players set #dinonog_display ff_dinonog 100

execute unless predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:game_state/game_running if score #dinonog_display ff_dinonog < #dinonog_bar ff_dinonog run scoreboard players add #dinonog_display ff_dinonog 72
execute unless predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:game_state/game_running if score #dinonog_display ff_dinonog > #dinonog_bar ff_dinonog run scoreboard players remove #dinonog_display ff_dinonog 72
execute unless predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:game_state/game_running if score #dinonog_bar ff_dinonog matches 0 if score #dinonog_display ff_dinonog matches ..0 run scoreboard players set #dinonog_display ff_dinonog 0
execute unless predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:game_state/game_running if score #dinonog_bar ff_dinonog matches 3600 if score #dinonog_display ff_dinonog matches 3601.. run scoreboard players set #dinonog_display ff_dinonog 3600

function fossil_frights:frights/dinonog/update
