execute as @a[tag=ff_heist_key_return_thief,limit=1] run function fossil_frights:game/heists/key/return_inventory with storage fossil_frights:heist_key
function fossil_frights:game/heists/key/restore_guard
tag @a[tag=ff_heist_key_return_thief,limit=1] add ff_heist_key_used_returned
