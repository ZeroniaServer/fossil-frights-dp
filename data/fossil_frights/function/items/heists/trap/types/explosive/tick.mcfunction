scoreboard players add @s ff_glowtrap_age 1
scoreboard players add @s ff_glowtrap_fx 1
tp @s ~ ~ ~ ~10 ~
execute if score @s ff_glowtrap_age matches ..39 run function fossil_frights:items/heists/trap/types/glow/fx_arming
execute if score @s ff_glowtrap_age matches ..39 run return 0
execute if score @s ff_glowtrap_age matches 40..49 run function fossil_frights:items/heists/trap/types/glow/fx_activate_expand
execute if score @s ff_glowtrap_age matches 40..49 run return 0
execute if score @s ff_glowtrap_age matches 50 run function fossil_frights:items/heists/trap/types/glow/activate
execute if score @s ff_glowtrap_fx matches 5.. run scoreboard players set @s ff_glowtrap_fx 0
execute if score @s ff_glowtrap_fx matches 0 run function fossil_frights:items/heists/trap/types/glow/fx_ring
execute positioned ~-1.5 ~-1.5 ~-1.5 unless entity @a[limit=1,team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] run return 0
function fossil_frights:items/heists/trap/types/explosive/trigger
