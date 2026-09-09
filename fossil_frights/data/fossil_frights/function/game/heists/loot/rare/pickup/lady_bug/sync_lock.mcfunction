execute unless score $loot_lady_bug ff_heist_loot_state matches 1..2 run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/hide_lock
execute unless score $loot_lady_bug ff_heist_loot_state matches 1..2 run return 0
execute if entity @a[gamemode=!spectator,predicate=fossil_frights:player/inventory/lady_bug] run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/hide_lock
execute if entity @a[gamemode=!spectator,predicate=fossil_frights:player/inventory/lady_bug] run return 0
execute if entity @e[type=minecraft:item,predicate=fossil_frights:entity/contents/lady_bug,limit=1] run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/hide_lock
execute if entity @e[type=minecraft:item,predicate=fossil_frights:entity/contents/lady_bug,limit=1] run return 0
execute if entity @e[type=minecraft:item_display,tag=ff_lock_lady_bug,limit=1] run return 0
execute positioned -24.9375 95.0 77.5 rotated 90 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/lock",nbt:{Tags:["ff_lock","ff_lock_east","ff_lock_lady_bug"],item_display:"fixed",transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0.5,0],scale:[0.5,0.5,0.5]},width:1,height:1}}
