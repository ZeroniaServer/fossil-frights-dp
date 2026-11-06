execute store result storage fossil_frights:heist_key id int 1 run scoreboard players get @s ff_heist_guard_key_id
execute as @a[tag=ff_heist_key_return_thief,limit=1] run function fossil_frights:game/heists/key/return_inventory with storage fossil_frights:heist_key
function fossil_frights:game/heists/key/restore_if_missing
