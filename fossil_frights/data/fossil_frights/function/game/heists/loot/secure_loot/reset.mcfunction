tag @e[type=minecraft:interaction,tag=ff_heist_common_loot_click] remove ff_heist_loot_secured
tag @e[type=minecraft:interaction,tag=ff_heist_common_loot_click] remove ff_heist_loot_security_active
tag @e[type=minecraft:interaction,tag=ff_heist_common_loot_click] remove ff_heist_loot_resecure_cooldown
tag @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click] remove ff_heist_loot_secured
tag @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click] remove ff_heist_loot_security_active
tag @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click] remove ff_heist_loot_resecure_cooldown
kill @e[type=minecraft:marker,tag=ff_heist_loot_resecure_cooldown_marker]
scoreboard players set $loot_chondrite ff_heist_loot_security_locked 0
scoreboard players set $loot_coffee ff_heist_loot_security_locked 0
scoreboard players set $loot_spyglass ff_heist_loot_security_locked 0
scoreboard players set @e[type=minecraft:interaction,tag=ff_heist_common_loot_click] ff_heist_loot_security_cooldown 0
scoreboard players set @e[type=minecraft:interaction,tag=ff_heist_common_loot_click] ff_heist_loot_security_progress 0
scoreboard players set @e[type=minecraft:interaction,tag=ff_heist_common_loot_click] ff_heist_loot_security_flash 0
scoreboard players set @e[type=minecraft:interaction,tag=ff_heist_common_loot_click] ff_heist_loot_security_lease 0
scoreboard players set @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click] ff_heist_loot_security_cooldown 0
scoreboard players set @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click] ff_heist_loot_security_progress 0
scoreboard players set @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click] ff_heist_loot_security_flash 0
scoreboard players set @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click] ff_heist_loot_security_lease 0
