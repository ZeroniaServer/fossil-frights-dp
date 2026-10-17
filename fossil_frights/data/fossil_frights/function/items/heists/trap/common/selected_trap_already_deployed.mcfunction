execute as @a[tag=ff_trap_place_owner_check,limit=1] run function fossil_frights:items/heists/trap/on_cooldown
tag @a[tag=ff_trap_place_owner_check,limit=1] remove ff_trap_place_pending
tag @a[tag=ff_trap_place_owner_check,limit=1] add ff_trap_restore_pending
tag @a[tag=ff_trap_place_owner_check,limit=1] remove ff_trap_place_owner_check
return 0
