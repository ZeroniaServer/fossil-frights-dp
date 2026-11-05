advancement revoke @s only fossil_frights:tasks/hard/snowball_fight/click
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $snowball_fight_sel ff_task_state matches 1 run return 0
execute unless score $snowball_fight_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
execute store result score #snowball_fight_count ff_task_state run clear @s minecraft:snowball 0
execute if score #snowball_fight_count ff_task_state matches 16.. run function fossil_frights:player/actionbar/show/generic {message:{translate:"ff.task.snowball_fight.too_many",color:"red"}}
execute if score #snowball_fight_count ff_task_state matches 16.. run return 0
give @s minecraft:snowball 1
