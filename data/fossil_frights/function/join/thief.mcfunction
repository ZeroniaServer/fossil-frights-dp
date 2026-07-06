function fossil_frights:game/heists/setup_current_player
function fossil_frights:join/lobby
team join ff_thief @s
scoreboard players set @s ff_heist_stolen_keys 0
function fossil_frights:game/heists/loadout/thief
function fossil_frights:util/fade/queue/heist_thief
scoreboard players set @s ff_join_cooldown 40
function fossil_frights:game/heists/waiting_text/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:messages/heists/joined_thieves
