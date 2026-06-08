execute unless score $loot_lost_key ff_heist_loot_state matches 1 run return 0
execute if score $heist_loot ff_heist matches 1000.. run return 0
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"vault_key"}}}]} run return 0
function fossil_frights:tasks/hard/return_the_key/give_key
scoreboard players set $loot_lost_key ff_heist_loot_state 2
function fossil_frights:game/heists/loot/high/sync/lost_key
function fossil_frights:game/heists/loot/render
