scoreboard players set $heist_round_active ff_game_state 0
scoreboard players set $heist_stopwatch_active ff_heist 0
stopwatch remove fossil_frights:heist_round
schedule clear fossil_frights:game/heists/start_reveal/next
schedule clear fossil_frights:game/heists/start_reveal/goodluck
schedule clear fossil_frights:game/heists/start_reveal/go
scoreboard players set $timer_frozen ff_day 0
function fossil_frights:game/heists/loot/cleanup
function fossil_frights:game/start_room/locked_door/clear
function fossil_frights:game/heists/loot/reset_basement_lava_lock
execute as @a[predicate=fossil_frights:player/is_playing] run attribute @s minecraft:jump_strength base reset
execute as @a[team=ff_thief] run attribute @s minecraft:movement_speed base reset
execute as @a[team=ff_thief] run attribute @s minecraft:friction_modifier base reset
execute as @a[team=ff_thief] run attribute @s minecraft:air_drag_modifier base reset
execute as @a[team=ff_thief] run function fossil_frights:items/heists/ice_cannon/freeze_player/remove_attribute_modifiers
scoreboard players set @a ff_heist_stolen_keys 0
scoreboard players set $heist_players_ready ff_game_state 0
scoreboard players set $day_active ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $victory_complete ff_game_state 1
function fossil_frights:key/lock/setup
function fossil_frights:game/bossbar/set_victory
