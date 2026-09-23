tag @s remove ff_heist_loot_secured
execute if entity @s[tag=ff_heist_loot_chondrite_click] run tag @e[type=minecraft:interaction,tag=ff_heist_loot_chondrite_click] remove ff_heist_loot_secured
execute if entity @s[tag=ff_heist_loot_coffee_click] run tag @e[type=minecraft:interaction,tag=ff_heist_loot_coffee_click] remove ff_heist_loot_secured
execute if entity @s[tag=ff_heist_loot_spyglass_click] run tag @e[type=minecraft:interaction,tag=ff_heist_loot_spyglass_click] remove ff_heist_loot_secured
execute if entity @s[tag=ff_heist_loot_chondrite_click] run scoreboard players set $loot_chondrite ff_heist_loot_security_locked 0
execute if entity @s[tag=ff_heist_loot_coffee_click] run scoreboard players set $loot_coffee ff_heist_loot_security_locked 0
execute if entity @s[tag=ff_heist_loot_spyglass_click] run scoreboard players set $loot_spyglass ff_heist_loot_security_locked 0
tag @s remove ff_heist_loot_security_active
scoreboard players set @s ff_heist_loot_security_cooldown 1200
tag @s add ff_heist_loot_resecure_cooldown
execute unless entity @s[tag=ff_heist_loot_chondrite_click] unless entity @s[tag=ff_heist_loot_coffee_click] unless entity @s[tag=ff_heist_loot_spyglass_click] at @s run summon minecraft:marker ~ ~ ~ {Tags:["ff_heist_loot_resecure_cooldown_marker"]}
execute unless entity @s[tag=ff_heist_loot_chondrite_click] unless entity @s[tag=ff_heist_loot_coffee_click] unless entity @s[tag=ff_heist_loot_spyglass_click] at @s as @e[type=minecraft:marker,tag=ff_heist_loot_resecure_cooldown_marker,distance=..0.1,sort=nearest,limit=1] run scoreboard players set @s ff_heist_loot_security_cooldown 1200
execute if entity @s[tag=ff_heist_loot_chondrite_click] as @e[type=minecraft:interaction,tag=ff_heist_loot_chondrite_click] at @s run summon minecraft:marker ~ ~ ~ {Tags:["ff_heist_loot_resecure_cooldown_marker"]}
execute if entity @s[tag=ff_heist_loot_coffee_click] as @e[type=minecraft:interaction,tag=ff_heist_loot_coffee_click] at @s run summon minecraft:marker ~ ~ ~ {Tags:["ff_heist_loot_resecure_cooldown_marker"]}
execute if entity @s[tag=ff_heist_loot_spyglass_click] as @e[type=minecraft:interaction,tag=ff_heist_loot_spyglass_click] at @s run summon minecraft:marker ~ ~ ~ {Tags:["ff_heist_loot_resecure_cooldown_marker"]}
execute if entity @s[tag=ff_heist_loot_chondrite_click] as @e[type=minecraft:interaction,tag=ff_heist_loot_chondrite_click] at @s as @e[type=minecraft:marker,tag=ff_heist_loot_resecure_cooldown_marker,distance=..0.1,sort=nearest,limit=1] run scoreboard players set @s ff_heist_loot_security_cooldown 1200
execute if entity @s[tag=ff_heist_loot_coffee_click] as @e[type=minecraft:interaction,tag=ff_heist_loot_coffee_click] at @s as @e[type=minecraft:marker,tag=ff_heist_loot_resecure_cooldown_marker,distance=..0.1,sort=nearest,limit=1] run scoreboard players set @s ff_heist_loot_security_cooldown 1200
execute if entity @s[tag=ff_heist_loot_spyglass_click] as @e[type=minecraft:interaction,tag=ff_heist_loot_spyglass_click] at @s as @e[type=minecraft:marker,tag=ff_heist_loot_resecure_cooldown_marker,distance=..0.1,sort=nearest,limit=1] run scoreboard players set @s ff_heist_loot_security_cooldown 1200
scoreboard players set @s ff_heist_loot_security_progress 0
scoreboard players set @s ff_heist_loot_security_flash 20
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run title @s subtitle ""
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run tag @s remove ff_heist_loot_security_active
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_ticks 0
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_hold 0
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_phase 0
execute as @p[distance=..6,limit=1] run scoreboard players reset @s ff_actionbar_manager.slot.loot_securing
