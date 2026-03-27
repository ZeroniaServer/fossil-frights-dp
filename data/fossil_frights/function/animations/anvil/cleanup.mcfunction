kill @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1]
kill @e[type=minecraft:item_display,tag=ff_anvil_mace,distance=..2,limit=1]
tag @e[type=minecraft:item,tag=ff_anvil_input,distance=..0.75,limit=1] remove ff_anvil_input
tag @s remove ff_anvil_busy
scoreboard players set @s ff_anvil_time 0
scoreboard players set @s ff_anvil_result 0
scoreboard players set @s ff_anvil_hits 0
