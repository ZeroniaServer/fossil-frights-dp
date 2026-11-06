tag @s add ff_rejoin_ghosted
execute if entity @s[tag=ff_rejoin_heists_thief] run tag @s add ff_heist_key_return_thief
execute if entity @s[tag=ff_rejoin_heists_thief] as @a[predicate=fossil_frights:player/team/guard,scores={ff_heist_guard_has_key=0}] run function fossil_frights:game/heists/key/return_from_thief
tag @s remove ff_heist_key_return_thief
scoreboard players operation @s ff_rejoin_ticks = #rejoin_grace ff_constant
function fossil_frights:game/rejoin/ghost/spawn
execute if entity @s[tag=ff_rejoin_heists_thief] run function fossil_frights:game/heists/loot/update_held
function fossil_frights:messages/rejoin/ghosted
execute if entity @s[tag=ff_rejoin_frights] if score $run_multiplayer ff_game_state matches 0 if score $timer_frozen ff_day matches 0 run tag @s add ff_rejoin_paused
execute if entity @s[tag=ff_rejoin_paused] run function fossil_frights:game/frights/timer/freeze
