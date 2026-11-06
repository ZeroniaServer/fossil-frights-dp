scoreboard players set $falling_bone_fright ff_game_state 1


fill 4 86 58 7 86 58 air
fill 6 87 58 5 87 58 air

summon block_display 4.5 86.5 58.5 {"transformation":{"translation":[-0.5,-0.5,-0.5],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0]},"block_state":{"id":"minecraft:cherry_stairs","properties":{"half":"top","facing":"west"}},"teleport_duration":4,"Tags":["ff_falling_bone_prop"]}
summon block_display 5.5 86.5 58.5 {"transformation":{"translation":[-0.5,-0.5,-0.5],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0]},"block_state":{"id":"minecraft:cherry_stairs","properties":{"half":"top","facing":"west"}},"teleport_duration":4,"Tags":["ff_falling_bone_prop"]}
summon block_display 6.5 86.5 58.5 {"transformation":{"translation":[-0.5,-0.5,-0.5],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0]},"block_state":{"id":"minecraft:cherry_stairs","properties":{"half":"top","facing":"west"}},"teleport_duration":4,"Tags":["ff_falling_bone_prop"]}
summon block_display 7.5 86.5 58.5 {"transformation":{"translation":[-0.5,-0.5,-0.5],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0]},"block_state":{"id":"minecraft:cherry_stairs","properties":{"half":"top","facing":"west"}},"teleport_duration":4,"Tags":["ff_falling_bone_prop"]}
summon block_display 5.5 87.5 58.5 {"transformation":{"translation":[-0.5,-0.5,-0.5],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0]},"block_state":{"id":"minecraft:cherry_stairs","properties":{"half":"bottom","facing":"west"}},"teleport_duration":4,"Tags":["ff_falling_bone_prop"]}
summon block_display 6.5 87.5 58.5 {"transformation":{"translation":[-0.5,-0.5,-0.5],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0]},"block_state":{"id":"minecraft:cherry_stairs","properties":{"half":"bottom","facing":"west"}},"teleport_duration":4,"Tags":["ff_falling_bone_prop"]}

schedule function fossil_frights:frights/falling_bone/frame1 1t
schedule function fossil_frights:frights/falling_bone/frame5 5t
schedule function fossil_frights:frights/falling_bone/clear_screen_shake 2s