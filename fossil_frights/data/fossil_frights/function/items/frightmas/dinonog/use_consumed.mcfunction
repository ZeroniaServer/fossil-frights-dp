advancement revoke @s only fossil_frights:items/frightmas/dinonog/consume
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if predicate fossil_frights:game_state/heist_mode_active unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute if predicate fossil_frights:game_state/heist_mode_active run scoreboard players add #dinonog_bar ff_dinonog 50
execute if predicate fossil_frights:game_state/heist_mode_active if score #dinonog_bar ff_dinonog matches 101.. run scoreboard players set #dinonog_bar ff_dinonog 100
execute if predicate fossil_frights:game_state/heist_mode_active run return run function fossil_frights:frights/dinonog/update
scoreboard players add #dinonog_bar ff_dinonog 3000
execute if score #dinonog_bar ff_dinonog matches 6001.. run scoreboard players set #dinonog_bar ff_dinonog 6000
function fossil_frights:frights/dinonog/update
