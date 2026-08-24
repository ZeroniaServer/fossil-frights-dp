execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
function fossil_frights:game/start_room/settings/gamemode/remove_other_players
scoreboard players set $settings_randomizer_on ff_game_state 1
tag @s add ff_settings_randomizer_on
function fossil_frights:join/join_pads/randomizer/setup
function fossil_frights:game/start_room/settings/board/refresh
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
