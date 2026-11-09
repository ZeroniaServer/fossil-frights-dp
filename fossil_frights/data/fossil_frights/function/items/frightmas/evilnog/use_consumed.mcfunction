advancement revoke @s only fossil_frights:items/frightmas/evilnog/consume
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless entity @s[predicate=fossil_frights:player/team/thief,gamemode=!spectator] run return 0
execute if score #dinonog_bar ff_dinonog matches ..50 run scoreboard players set #dinonog_bar ff_dinonog 0
execute if score #dinonog_bar ff_dinonog matches 51.. run scoreboard players remove #dinonog_bar ff_dinonog 50
function fossil_frights:frights/dinonog/update
