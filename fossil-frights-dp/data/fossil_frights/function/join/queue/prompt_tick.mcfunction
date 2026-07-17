scoreboard players enable @s ff_queue_start
scoreboard players operation @s ff_queue_prompt_display = @s ff_queue_prompt_time
scoreboard players add @s ff_queue_prompt_display 19
scoreboard players operation @s ff_queue_prompt_display /= #20 ff_constant
title @s actionbar [{"translate":"ff.messages.info","color":"yellow","with":[{"translate":"ff.messages.up_next","with":[{"score":{"name":"@s","objective":"ff_queue_prompt_display"},"color":"gold"}]}]}]
scoreboard players remove @s ff_queue_prompt_time 1
execute if score @s ff_queue_prompt_time matches ..0 run function fossil_frights:join/queue/prompt_timeout
