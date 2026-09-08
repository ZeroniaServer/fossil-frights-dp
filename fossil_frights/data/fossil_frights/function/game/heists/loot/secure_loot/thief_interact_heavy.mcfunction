# Thief Heavy
execute if entity @s[tag=ff_heist_loot_security_active] as @p[tag=ff_heist_loot_clicker,distance=..10,limit=1] run function fossil_frights:game/heists/loot/secure_loot/refresh_hold
execute if entity @s[tag=ff_heist_loot_security_active] run scoreboard players set @s ff_heist_loot_security_lease 8
execute unless entity @s[tag=ff_heist_loot_security_active] run function fossil_frights:game/heists/loot/secure_loot/start_thief_heavy
