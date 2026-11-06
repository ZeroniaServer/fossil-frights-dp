function fossil_frights:messages/dinocoin/sarcophagus/activate
function fossil_frights:animations/dinocoin/sarcophagus/play/jump
playsound minecraft:block.grindstone.use block @a[distance=..24,x=52.5,y=73,z=79.5] 52.5 73 79.5 1 1
setblock 52 73 79 air
setblock 52 73 80 air
fill 51 73 79 51 73 80 minecraft:smooth_stone_slab
scoreboard players set $sarcophagus_timer ff_game_state 300
scoreboard players set $sarcophagus_item_timer ff_game_state 300
scoreboard players set $sarcophagus_prompt_cooldown ff_game_state 300
