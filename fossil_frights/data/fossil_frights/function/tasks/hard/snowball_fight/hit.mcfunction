advancement revoke @s only fossil_frights:tasks/hard/snowball_fight/hit
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $snowball_fight_sel ff_task_state matches 1 run return 0
execute unless score $snowball_fight_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
scoreboard players set #snowball_fight_hit ff_task_state 0
tag @s add ff_snowball_fight_shooter
execute as @e[type=minecraft:snowball] at @s on origin if entity @s[tag=ff_snowball_fight_shooter] as @e[type=minecraft:snow_golem,tag=ff_snowball_fight_golem,distance=..3,sort=nearest,limit=1] at @s run function fossil_frights:tasks/hard/snowball_fight/hit_golem
tag @s remove ff_snowball_fight_shooter
