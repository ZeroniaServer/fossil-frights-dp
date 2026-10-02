data remove storage fossil_frights:trap_state trap_data
data modify storage fossil_frights:trap_state trap_data set from entity @s data.ff_trap
scoreboard players set #players_killed ff_dummy 0
function fossil_frights:entity/match/active
$execute as @a[gamemode=!spectator,distance=..$(distance)] run function fossil_frights:items/heists/trap/types/explosive/kill_player
execute if score #players_killed ff_dummy matches 1.. run advancement grant @a[limit=1,team=ff_guard,predicate=fossil_frights:entity/match/active] only fossil_frights:02_achievements/heists_kaboom
data remove storage fossil_frights:trap_state trap_data
