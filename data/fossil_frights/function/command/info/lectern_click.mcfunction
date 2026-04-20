advancement revoke @s only fossil_frights:info_lectern_click
execute unless score $game_running ff_game_state matches 1 run return 0
scoreboard players set @s ff_cmd_info 1
function fossil_frights:command/info
scoreboard players enable @s ff_cmd_info
scoreboard players set @s ff_cmd_info 0
