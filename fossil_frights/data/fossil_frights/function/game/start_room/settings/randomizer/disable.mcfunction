scoreboard players set $settings_randomizer_on ff_game_state 0
tag @s remove ff_settings_randomizer_on
function fossil_frights:join/join_pads/heists/setup
function fossil_frights:game/start_room/settings/board/refresh
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
