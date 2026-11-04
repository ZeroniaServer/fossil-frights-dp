execute unless score $freeze_pond_done ff_task_state matches 1 run return 0
setblock 52 84 81 minecraft:ice
particle minecraft:snowflake 52.5 84.8 81.5 0.3 0.15 0.3 0.01 8 force
setblock 56 84 79 minecraft:ice
particle minecraft:snowflake 56.5 84.8 79.5 0.3 0.15 0.3 0.01 8 force
