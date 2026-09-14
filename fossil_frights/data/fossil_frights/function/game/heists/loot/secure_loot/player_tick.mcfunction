execute if score @s ff_heist_loot_security_actionbar matches 1.. run scoreboard players remove @s ff_heist_loot_security_actionbar 1
execute if score @s ff_heist_loot_security_recent matches 1.. run scoreboard players remove @s ff_heist_loot_security_recent 1
execute unless entity @s[tag=ff_heist_loot_security_active] run return 0
execute unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,distance=..6,limit=1] run function fossil_frights:game/heists/loot/secure_loot/clear_player
execute if score @s ff_heist_loot_security_hold matches 1.. run scoreboard players add @s ff_heist_loot_security_ticks 1
execute if score @s ff_heist_loot_security_hold matches ..0 if score @s ff_heist_loot_security_ticks matches 1.. run scoreboard players remove @s ff_heist_loot_security_ticks 1
execute if score @s ff_heist_loot_security_hold matches 1.. run scoreboard players remove @s ff_heist_loot_security_hold 1
execute if score @s ff_heist_loot_security_phase matches 2 at @s as @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,distance=..6,limit=1] run scoreboard players operation @s ff_heist_loot_security_progress = @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] ff_heist_loot_security_ticks
execute if score @s ff_heist_loot_security_phase matches 4 at @s as @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,distance=..6,limit=1] run scoreboard players operation @s ff_heist_loot_security_progress = @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] ff_heist_loot_security_ticks
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 60 run function fossil_frights:game/heists/loot/secure_loot/play_unsecuring
function fossil_frights:game/heists/loot/secure_loot/ui/show
# Common loot secures in 2 seconds, unsecures in 6 seconds, cooldown is 1 minute.
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 40.. at @s as @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,distance=..6,limit=1] run function fossil_frights:game/heists/loot/secure_loot/complete_guard
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 120.. at @s as @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,distance=..6,limit=1] run function fossil_frights:game/heists/loot/secure_loot/complete_thief
# Heavy loot secures in 6 seconds, unsecures in 3 seconds, cooldown is 3 minutes.
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 120.. at @s as @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,distance=..6,limit=1] run function fossil_frights:game/heists/loot/secure_loot/complete_guard_heavy
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 40 run function fossil_frights:game/heists/loot/secure_loot/play_unsecuring
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 60.. at @s as @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,distance=..6,limit=1] run function fossil_frights:game/heists/loot/secure_loot/complete_thief_heavy
execute if score @s ff_heist_loot_security_phase matches 1.. if score @s ff_heist_loot_security_ticks matches ..0 if score @s ff_heist_loot_security_hold matches ..0 run function fossil_frights:game/heists/loot/secure_loot/clear_player
