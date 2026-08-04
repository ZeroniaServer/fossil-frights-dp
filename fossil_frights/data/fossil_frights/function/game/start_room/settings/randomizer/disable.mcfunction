tag @a remove ff_settings_randomizer_on
function fossil_frights:join/join_pads/heists/setup
function fossil_frights:game/start_room/settings/board/refresh
tellraw @s {text:"Randomizer disabled.",color:"red"}
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
