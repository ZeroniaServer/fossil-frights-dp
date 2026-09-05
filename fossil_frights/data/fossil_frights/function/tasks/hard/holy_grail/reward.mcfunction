effect give @s minecraft:glowing 1 0 true
execute if score $holy_grail_reward ff_task_state matches 1 run effect give @s minecraft:jump_boost 10 6 true
execute if score $holy_grail_reward ff_task_state matches 1 run tellraw @s [{"text":"<","color":"white"},{"translate":"ff.task.holy_grail","color":"yellow"},{"text":"> ","color":"white"},{"translate":"ff.task.holy_grail.reward.light","color":"white"}]
execute if score $holy_grail_reward ff_task_state matches 2 run effect give @s minecraft:luck 40 0 true
execute if score $holy_grail_reward ff_task_state matches 2 run tellraw @s [{"text":"<","color":"white"},{"translate":"ff.task.holy_grail","color":"yellow"},{"text":"> ","color":"white"},{"translate":"ff.task.holy_grail.reward.spring","color":"white"}]
execute if score $holy_grail_reward ff_task_state matches 3 run effect give @s minecraft:speed 30 1 true
execute if score $holy_grail_reward ff_task_state matches 3 run tellraw @s [{"text":"<","color":"white"},{"translate":"ff.task.holy_grail","color":"yellow"},{"text":"> ","color":"white"},{"translate":"ff.task.holy_grail.reward.adrenaline","color":"white"}]
execute if score $holy_grail_reward ff_task_state matches 4 run effect give @s minecraft:fire_resistance 600 0 true
execute if score $holy_grail_reward ff_task_state matches 4 run effect give @s minecraft:water_breathing 600 0 true
execute if score $holy_grail_reward ff_task_state matches 4 run effect give @s minecraft:resistance 600 0 true
execute if score $holy_grail_reward ff_task_state matches 4 run tellraw @s [{"text":"<","color":"white"},{"translate":"ff.task.holy_grail","color":"yellow"},{"text":"> ","color":"white"},{"translate":"ff.task.holy_grail.reward.resilient","color":"white"}]
