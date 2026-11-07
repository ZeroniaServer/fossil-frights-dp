execute if score $loot_ice_sculpture ff_heist_loot_state matches 3 run scoreboard players operation $heist_loot ff_heist -= $loot_ice_sculpture ff_heist_loot_value
execute if score $heist_loot ff_heist matches ..-1 run scoreboard players set $heist_loot ff_heist 0
scoreboard players set $loot_ice_sculpture ff_heist_loot_state 0
scoreboard players set $loot_ice_sculpture ff_heist_loot_value 0
scoreboard players set $loot_ice_sculpture ff_heist_flash 0
scoreboard players reset $loot_ice_sculpture ff_heist_sidebar
function fossil_frights:game/heists/loot/rare/ice_sculpture/reset_location
data merge entity @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] {view_range:0f}
function fossil_frights:game/heists/loot/reorder
function fossil_frights:game/heists/loot/render
