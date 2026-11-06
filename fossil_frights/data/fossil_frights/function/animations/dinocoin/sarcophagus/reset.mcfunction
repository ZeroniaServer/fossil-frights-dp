scoreboard players set $sarcophagus_timer ff_game_state 0
scoreboard players set $sarcophagus_prompt_cooldown ff_game_state 0
function fossil_frights:animations/dinocoin/sarcophagus/talking_skull_default
playsound minecraft:block.grindstone.use block @a[distance=..24,x=52.5,y=73,z=79.5] 52.5 73 79.5 1 1
fill 78 75 78 79 75 79 air
fill 51 73 79 51 73 80 air
setblock 52 73 79 minecraft:smooth_stone_slab[type=bottom]
setblock 52 73 80 minecraft:smooth_stone_slab[type=bottom]
execute positioned 52.0 71.5 80.0 as @a[dx=0,dy=0,dz=1] at @s run tp @s ~ 72.5 ~
