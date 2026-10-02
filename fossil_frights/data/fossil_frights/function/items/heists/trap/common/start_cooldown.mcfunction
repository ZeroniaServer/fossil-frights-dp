scoreboard players set $trap_guard_nearby ff_trap_balance 0
execute if entity @a[team=ff_guard,gamemode=!spectator,distance=..10] run scoreboard players set $trap_guard_nearby ff_trap_balance 1
function fossil_frights:entity/match/active
execute as @a[limit=1,team=ff_guard,predicate=fossil_frights:entity/match/active] run function fossil_frights:advancements/heists/grant_trap_owner_snared

scoreboard players operation #this ff_trap_type = @s ff_trap_type
function fossil_frights:entity/match/active
execute as @a[limit=1,team=ff_guard,predicate=fossil_frights:entity/match/active] run function fossil_frights:items/heists/trap/common/start_cooldown_owner
