scoreboard players set $heist_round_active ff_game_state 0
schedule clear fossil_frights:game/heists/start_reveal/next
schedule clear fossil_frights:game/heists/start_reveal/goodluck
schedule clear fossil_frights:game/heists/start_reveal/go
scoreboard players set $timer_frozen ff_day 0
function fossil_frights:game/heists/loot/low/cleanup
function fossil_frights:game/heists/loot/high/cleanup
function fossil_frights:game/heists/oxidized_bars/clear
function fossil_frights:game/heists/loot/reset_basement_lava_lock
execute as @a[team=ff_guard] run attribute @s minecraft:jump_strength base set 0.42
execute as @a[team=ff_thief] run attribute @s minecraft:jump_strength base set 0.42
execute as @a[team=ff_thief] run attribute @s minecraft:movement_speed base reset
execute as @a[team=ff_thief] run attribute @s minecraft:friction_modifier base reset
scoreboard players set @a ff_heist_stolen_keys 0
scoreboard players set $heist_players_ready ff_game_state 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_current ff_day 10
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $victory_complete ff_game_state 1
function fossil_frights:key/lock/setup
function fossil_frights:game/bossbar/set_victory
execute unless score $heist_timer ff_heist matches ..0 run stopsound @a record fossil-frights:heists.music