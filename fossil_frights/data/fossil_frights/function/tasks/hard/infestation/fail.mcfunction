scoreboard players set $infestation_answer ff_task_state 1
function fossil_frights:tasks/hard/infestation/update_display
gamerule minecraft:show_death_messages false
tellraw @a [{"translate":"ff.death.infestation","with":[{"selector":"@s","separator":""}],"color":"white"}]
kill @s
gamerule minecraft:show_death_messages true
