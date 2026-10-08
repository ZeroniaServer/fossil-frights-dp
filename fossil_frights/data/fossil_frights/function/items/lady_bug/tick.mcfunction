data modify storage fossil_frights:lady_bug gametime set compute default integer fossil_frights:gametime
data modify storage fossil_frights:lady_bug despawn_timestamp set compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime","fossil_frights:items/lady_bug/max_age"]}
function fossil_frights:items/lady_bug/resolve with storage fossil_frights:lady_bug {}

execute as @e[type=minecraft:item,predicate=fossil_frights:entity/contents/lady_bug,tag=!ff_anvil.display] run function fossil_frights:items/lady_bug/while_dropped
execute as @e[type=#fossil_frights:players_and_thrown_items,tag=!ff_anvil.display] if slots entity @s fossil_frights:player/filtered/lady_bug_fly_away run function fossil_frights:messages/heists/lady_bug_escaped
item fill entity @e[type=#fossil_frights:players_and_thrown_items,tag=!ff_anvil.display] fossil_frights:player/filtered/lady_bug_fly_away with air

execute as @a[predicate=fossil_frights:player/inventory/lady_bug] run function fossil_frights:items/lady_bug/actionbar

schedule function fossil_frights:items/lady_bug/tick 1t
