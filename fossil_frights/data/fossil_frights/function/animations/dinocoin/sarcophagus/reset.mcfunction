scoreboard players set $sarcophagus_timer ff_game_state 0
scoreboard players set $sarcophagus_prompt_cooldown ff_game_state 0
function fossil_frights:animations/dinocoin/sarcophagus/talking_skull_default
playsound minecraft:block.grindstone.use block @a[distance=..24,x=79.5,y=75,z=78.5] 79.5 75 78.5 1 1
fill 78 75 78 78 75 79 air
setblock 79 75 79 minecraft:smooth_stone_slab[type=bottom]
setblock 79 75 78 minecraft:smooth_stone_slab[type=bottom]
execute positioned 79.0 74.5 78.0 as @a[dx=0,dy=0,dz=1] at @s run tp @s ~ 75.5 ~
