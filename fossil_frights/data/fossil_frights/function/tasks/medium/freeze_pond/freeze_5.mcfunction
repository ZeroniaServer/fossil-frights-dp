execute unless score $freeze_pond_done ff_task_state matches 1 run return 0
setblock 51 84 80 minecraft:ice
particle minecraft:snowflake 51.5 84.8 80.5 0.3 0.15 0.3 0.01 8 force
setblock 53 84 78 minecraft:ice
particle minecraft:snowflake 53.5 84.8 78.5 0.3 0.15 0.3 0.01 8 force
