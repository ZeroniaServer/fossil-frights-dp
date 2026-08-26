tag @s add ff_rejoin_ghosted
scoreboard players operation @s ff_rejoin_ticks = #rejoin_grace ff_constant
function fossil_frights:game/rejoin/ghost/spawn
execute if entity @s[tag=ff_rejoin_heists_thief] run function fossil_frights:game/heists/loot/update_held
function fossil_frights:messages/rejoin/ghosted
execute if entity @s[tag=ff_rejoin_frights] if score $run_multiplayer ff_game_state matches 0 if score $timer_frozen ff_day matches 0 run tag @s add ff_rejoin_paused
execute if entity @s[tag=ff_rejoin_paused] run scoreboard players set $timer_frozen ff_day 1
