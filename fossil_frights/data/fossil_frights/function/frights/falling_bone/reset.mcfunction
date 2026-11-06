scoreboard players set $falling_bone_fright ff_game_state 0

fill 4 86 58 7 86 58 minecraft:cherry_stairs[half=top,facing=west]
fill 6 87 58 5 87 58 minecraft:cherry_stairs[half=bottom,facing=west]

fill 5 81 58 6 81 58 air
fill 7 80 58 4 80 58 air

kill @e[type=block_display,tag=ff_falling_bone_prop]

schedule clear fossil_frights:frights/falling_bone/frame1
schedule clear fossil_frights:frights/falling_bone/frame5