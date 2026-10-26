advancement revoke @s only fossil_frights:items/rock/interact

tag @s add ff_rock.player
execute as @e[type=minecraft:interaction,tag=ff_rock.interaction] if function fossil_frights:items/rock/interact/check at @s run function fossil_frights:items/rock/interact/select
tag @s remove ff_rock.player
