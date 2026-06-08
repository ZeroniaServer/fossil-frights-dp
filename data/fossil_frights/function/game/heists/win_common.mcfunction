scoreboard players set $heist_round_active ff_game_state 0
function fossil_frights:game/heists/loot/low/cleanup
function fossil_frights:game/heists/loot/high/cleanup
function fossil_frights:game/heists/oxidized_bars/clear
execute as @a[tag=ff_heist_guard] run attribute @s minecraft:jump_strength base set 0.42
execute as @a[tag=ff_heist_thief] run attribute @s minecraft:jump_strength base set 0.42
scoreboard players set $heist_players_ready ff_game_state 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_current ff_day 10
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $victory_complete ff_game_state 1
function fossil_frights:game/bossbar/set_victory
