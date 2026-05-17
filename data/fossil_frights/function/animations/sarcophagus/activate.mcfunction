tellraw @a[tag=ff_active] ["<",{"color":"gray","text":"Talking Skull"},"> Hop in :)"]
playsound minecraft:block.grindstone.use block @a[distance=..24,x=79.5,y=75,z=78.5] 79.5 75 78.5 1 1
setblock 79 75 79 air
setblock 79 75 78 air
fill 78 75 78 78 75 79 minecraft:smooth_stone_slab
scoreboard players set $sarcophagus_timer ff_game_state 300
scoreboard players set $sarcophagus_prompt_cooldown ff_game_state 300
