execute if score $loot_soap ff_heist_loot_state matches 3 run scoreboard players operation $heist_loot ff_heist -= $loot_soap ff_heist_loot_value
execute if score $heist_loot ff_heist matches ..-1 run scoreboard players set $heist_loot ff_heist 0
function fossil_frights:game/heists/loot/header
scoreboard players set $loot_soap ff_heist_loot_state 0
scoreboard players set $loot_soap ff_heist_loot_value 0
scoreboard players reset $loot_soap ff_heist_sidebar
function fossil_frights:game/heists/loot/sync_all
function fossil_frights:game/heists/loot/reorder
function fossil_frights:key/lock/setup
function fossil_frights:game/heists/loot/render
