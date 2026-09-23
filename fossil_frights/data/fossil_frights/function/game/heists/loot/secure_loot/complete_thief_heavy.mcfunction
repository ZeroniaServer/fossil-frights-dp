tag @s remove ff_heist_loot_secured
tag @s remove ff_heist_loot_security_active
scoreboard players set @s ff_heist_loot_security_cooldown 3600
tag @s add ff_heist_loot_resecure_cooldown
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ff_heist_loot_resecure_cooldown_marker"]}
execute at @s as @e[type=minecraft:marker,tag=ff_heist_loot_resecure_cooldown_marker,distance=..0.1,sort=nearest,limit=1] run scoreboard players set @s ff_heist_loot_security_cooldown 3600
scoreboard players set @s ff_heist_loot_security_progress 0
scoreboard players set @s ff_heist_loot_security_flash 20
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run title @s subtitle ""
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run tag @s remove ff_heist_loot_security_active
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_ticks 0
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_hold 0
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_phase 0
execute as @p[distance=..6,limit=1] run scoreboard players reset @s ff_actionbar_manager.slot.loot_securing
