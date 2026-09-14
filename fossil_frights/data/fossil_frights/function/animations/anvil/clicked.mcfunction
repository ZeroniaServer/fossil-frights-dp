advancement revoke @s only fossil_frights:misc/anvil_click

execute unless predicate fossil_frights:game_state/game_running unless predicate fossil_frights:player/anvil_use_override run return 0
execute unless predicate fossil_frights:player/is_playing unless predicate fossil_frights:player/anvil_use_override run return 0
execute unless items entity @s weapon.* *[minecraft:custom_data~{ff_anvil_ingredient:{}}] run return 0
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.process] run return 0

item replace block 0 0 0 container.0 with air
function fossil_frights:animations/anvil/clicked/use
item modify block 0 0 0 container.0 {function:"minecraft:set_count",count:1}

function fossil_frights:animations/anvil/input
