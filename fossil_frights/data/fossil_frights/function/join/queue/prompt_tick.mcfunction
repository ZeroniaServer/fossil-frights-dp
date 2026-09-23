scoreboard players enable @s ff_queue_start
scoreboard players operation @s ff_queue_prompt_display = @s ff_queue_prompt_time
scoreboard players add @s ff_queue_prompt_display 19
scoreboard players operation @s ff_queue_prompt_display /= #20 ff_constant
function fossil_frights:player/actionbar/show/generic/up_next
scoreboard players remove @s ff_queue_prompt_time 1
execute if score @s ff_queue_prompt_time matches ..0 run function fossil_frights:join/queue/prompt_timeout
