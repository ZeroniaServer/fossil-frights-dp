tag @s add ff_heist_loot_security_active
scoreboard players set @s ff_heist_loot_security_lease 8
execute as @p[tag=ff_heist_loot_clicker,distance=..10,limit=1] run function fossil_frights:game/heists/loot/secure_loot/begin_thief
