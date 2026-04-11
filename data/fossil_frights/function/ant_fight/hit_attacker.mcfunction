advancement revoke @s only fossil_frights:ant_fight_hit_attacker
execute unless entity @s[tag=ff_ant_fight] run return 0
scoreboard players add @s ff_ant_score 1
