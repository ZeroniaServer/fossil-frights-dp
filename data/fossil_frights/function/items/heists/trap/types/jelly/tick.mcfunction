scoreboard players add @s ff_glowtrap_age 1
scoreboard players add @s ff_glowtrap_fx 1
tp @s ~ ~ ~ ~10 ~
execute if score @s ff_glowtrap_age matches ..39 run function fossil_frights:items/heists/trap/types/jelly/fx/arming
execute if score @s ff_glowtrap_age matches ..39 run return 0
execute if score @s ff_glowtrap_age matches 40..49 run function fossil_frights:items/heists/trap/types/jelly/fx/activate_expand
execute if score @s ff_glowtrap_age matches 40..49 run return 0
execute if score @s ff_glowtrap_age matches 50 run function fossil_frights:items/heists/trap/types/jelly/fx/activate
execute if score @s ff_glowtrap_fx matches 5.. run scoreboard players set @s ff_glowtrap_fx 0
execute if score @s ff_glowtrap_fx matches 0 run function fossil_frights:items/heists/trap/types/jelly/fx/ring
execute if score @s ff_glowtrap_age matches 50.. if entity @e[type=minecraft:item,limit=1,distance=..1.6] run function fossil_frights:items/heists/trap/types/jelly/trigger_item
execute if score @s ff_glowtrap_age matches 50.. unless entity @e[type=minecraft:item,limit=1,distance=..1.6] positioned ~ ~1 ~ if entity @e[type=minecraft:item,limit=1,distance=..1.6] run function fossil_frights:items/heists/trap/types/jelly/trigger_item
execute if score @s ff_glowtrap_age matches 50.. unless entity @e[type=minecraft:item,limit=1,distance=..1.6] positioned ~ ~-1 ~ if entity @e[type=minecraft:item,limit=1,distance=..1.6] run function fossil_frights:items/heists/trap/types/jelly/trigger_item
execute if entity @a[limit=1,team=ff_thief,gamemode=!spectator,distance=..1.6] run function fossil_frights:items/heists/trap/types/jelly/trigger
execute unless entity @a[limit=1,team=ff_thief,gamemode=!spectator,distance=..1.6] positioned ~ ~1 ~ if entity @a[limit=1,team=ff_thief,gamemode=!spectator,distance=..1.6] run function fossil_frights:items/heists/trap/types/jelly/trigger
execute unless entity @a[limit=1,team=ff_thief,gamemode=!spectator,distance=..1.6] positioned ~ ~-1 ~ if entity @a[limit=1,team=ff_thief,gamemode=!spectator,distance=..1.6] run function fossil_frights:items/heists/trap/types/jelly/trigger
