advancement revoke @s only fossil_frights:ant_fight_hit_victim
execute unless entity @s[tag=ff_ant_fight] run return 0
execute if score @s ff_ant_score matches 1.. run scoreboard players remove @s ff_ant_score 1
function fossil_frights:ant_fight/exit_restore
