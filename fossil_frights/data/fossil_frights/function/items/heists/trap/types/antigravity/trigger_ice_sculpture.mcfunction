execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,distance=..1.6,limit=1] run effect give @s minecraft:levitation 5 5 true
function fossil_frights:game/heists/loot/rare/ice_sculpture/glow_short
execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,distance=..1.6,limit=1] run tag @s add ff_antigravity_fx
schedule function fossil_frights:items/heists/trap/types/antigravity/fx/levitation 10t append
function fossil_frights:items/heists/trap/types/antigravity/trigger
schedule function fossil_frights:items/heists/trap/types/antigravity/fx/remove_tag 105t append
