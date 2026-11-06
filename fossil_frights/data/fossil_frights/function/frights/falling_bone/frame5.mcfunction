execute positioned 5.5 80 58 run playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 0.7 0.8
particle minecraft:block{"block_state":{"id":"cherry_stairs"}} 6.0 80.0 58.5 1.75 0.0 0.75 0.0 60 normal @a
particle minecraft:campfire_cosy_smoke 6.0 80.0 58.5 1.75 0.0 0.75 0.0 30 normal @a

execute positioned 5.5 80 58 run posteffect add @a[predicate=fossil_frights:player/is_playing,distance=..5] fossil_frights:screen_shake 

fill 5 81 58 6 81 58 minecraft:cherry_stairs[half=bottom,facing=west]
fill 7 80 58 4 80 58 minecraft:cherry_stairs[half=top,facing=west]

kill @e[type=block_display,tag=ff_falling_bone_prop]