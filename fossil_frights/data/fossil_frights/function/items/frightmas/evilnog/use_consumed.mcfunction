advancement revoke @s only fossil_frights:items/frightmas/evilnog/consume
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless entity @s[predicate=fossil_frights:player/team/thief,gamemode=!spectator] run return 0
execute if score #dinonog_bar ff_dinonog matches 0 run function fossil_frights:hallucination/add_random
execute if score #dinonog_bar ff_dinonog matches 0 run scoreboard players set #h_was_zero ff_hallucination 1
execute if score #dinonog_bar ff_dinonog matches 0 run scoreboard players set #h_timer ff_hallucination 0
execute if score #dinonog_bar ff_dinonog matches ..50 run scoreboard players set #dinonog_bar ff_dinonog 0
execute if score #dinonog_bar ff_dinonog matches 51.. run scoreboard players remove #dinonog_bar ff_dinonog 50
function fossil_frights:frights/dinonog/update
