function fossil_frights:tasks/final/naughty_or_nice/cleanup
function fossil_frights:tasks/final/naughty_or_nice/recipients/hide_stockings
execute as @e[type=minecraft:text_display,tag=ff_final_nice1] run data modify entity @s text set value ""
execute as @e[type=minecraft:text_display,tag=ff_final_nice2] run data modify entity @s text set value ""
execute as @e[type=minecraft:text_display,tag=ff_final_nice3] run data modify entity @s text set value ""
execute as @e[type=minecraft:text_display,tag=ff_final_naughty1] run data modify entity @s text set value ""
scoreboard players set $naughty_or_nice_started ff_task_state 0
advancement revoke @a only fossil_frights:tasks/final/naughty_or_nice/click
