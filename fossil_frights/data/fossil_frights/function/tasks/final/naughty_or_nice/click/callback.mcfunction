advancement revoke @s only fossil_frights:tasks/final/naughty_or_nice/click
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $naughty_or_nice_sel ff_task_state matches 1 run return 0
execute unless score $naughty_or_nice_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
tag @s add ff_naughty_or_nice_player
execute positioned as @s as @e[type=minecraft:interaction,tag=ff_naughty_or_nice_click,distance=..10] at @s if function fossil_frights:tasks/final/naughty_or_nice/click/check_clicked run function fossil_frights:tasks/final/naughty_or_nice/click/dispatch
tag @s remove ff_naughty_or_nice_player
