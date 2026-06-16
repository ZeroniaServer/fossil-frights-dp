particle minecraft:block{block_state:{Name:"minecraft:frosted_ice",Properties:{age:"2"}}} ~ ~ ~ 0.75 0.75 0.75 0.12 80 force
particle minecraft:snowflake ~ ~ ~ 0.65 0.65 0.65 0.05 45 force
particle minecraft:poof ~ ~ ~ 0.45 0.45 0.45 0.08 24 force
playsound minecraft:block.glass.break player @a[distance=..24] ~ ~ ~ 0.9 0.85
execute as @a[tag=ff_ice_frozen,distance=..2.5] run attribute @s minecraft:jump_strength base set 0.42
execute as @a[tag=ff_ice_frozen,distance=..2.5] run attribute @s minecraft:entity_interaction_range base set 3
scoreboard players set @a[tag=ff_ice_frozen,distance=..2.5] ff_heist_thaw_fx 60
effect clear @a[tag=ff_ice_frozen,distance=..2.5] minecraft:slowness
tag @a[tag=ff_ice_frozen,distance=..2.5] remove ff_ice_frozen
kill @s
