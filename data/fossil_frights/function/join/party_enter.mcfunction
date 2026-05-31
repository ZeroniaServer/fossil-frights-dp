execute unless score $party_mode_active ff_game_state matches 1 run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_active] run function fossil_frights:game/party_mode/join_new_current
execute as @s run function fossil_frights:game/party_mode/setup_current_player
scoreboard players set @s ff_join_cooldown 40
