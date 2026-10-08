advancement revoke @s[type=player] only fossil_frights:items/lady_bug/trigger
execute if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/sync_lock
schedule function fossil_frights:items/lady_bug/tick 1t
