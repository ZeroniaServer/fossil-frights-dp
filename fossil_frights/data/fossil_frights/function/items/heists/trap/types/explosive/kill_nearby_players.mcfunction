data remove storage fossil_frights:trap_state placer_name
data modify storage fossil_frights:trap_state placer_name set from entity @s data.ff_trap.placer_name
$execute as @a[gamemode=!spectator,distance=..$(distance)] run function fossil_frights:items/heists/trap/types/explosive/kill_player
