scoreboard players remove @a[scores={ff_health_regeneration.blocked_time=1..}] ff_health_regeneration.blocked_time 1
scoreboard players reset @a[scores={ff_health_regeneration.blocked_time=..0}] ff_health_regeneration.blocked_time

execute as @a unless score @s ff_health_regeneration.blocked_time matches 1.. store result score @s ff_health_regeneration.natural_delay run compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:score",target:"this",score:"ff_health_regeneration.natural_delay"},{type:"minecraft:min",inputs:[1000,{type:"minecraft:from_float",input:{type:"minecraft:mul",inputs:["fossil_frights:player/natural_health_regeneration_speed",50]}}]}]}
scoreboard players add @a[scores={ff_health_regeneration.natural_delay=1000..}] ff_health_regeneration.regenerate_amount 1
scoreboard players remove @a[scores={ff_health_regeneration.natural_delay=1000..}] ff_health_regeneration.natural_delay 1000

effect clear @a[scores={ff_health_regeneration.regenerate_amount=..0}] minecraft:regeneration
scoreboard players reset @a[scores={ff_health_regeneration.regenerate_amount=..0}] ff_health_regeneration.regenerate_amount
effect give @a[scores={ff_health_regeneration.regenerate_amount=1..,ff_health_regeneration.health_tracker=..19}] minecraft:regeneration 1 5 true
scoreboard players remove @a[scores={ff_health_regeneration.regenerate_amount=1..}] ff_health_regeneration.regenerate_amount 1

schedule function fossil_frights:player/health_regeneration/tick 1t
