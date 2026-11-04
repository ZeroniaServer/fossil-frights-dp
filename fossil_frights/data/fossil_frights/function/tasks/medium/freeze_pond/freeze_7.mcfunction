execute unless score $freeze_pond_done ff_task_state matches 1 run return 0
setblock 55 84 80 minecraft:ice
particle minecraft:snowflake 55.5 84.8 80.5 0.3 0.15 0.3 0.01 8 force
setblock 56 84 80 minecraft:ice
particle minecraft:snowflake 56.5 84.8 80.5 0.3 0.15 0.3 0.01 8 force
