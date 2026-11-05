advancement revoke @s only fossil_frights:tasks/hard/feed_the_bats/click
execute unless score $feed_the_bats_sel ff_task_state matches 1 run return 0
execute unless score $feed_the_bats_done ff_task_state matches 0 run return 0
execute unless entity @e[limit=1,type=minecraft:interaction,tag=ff_feed_the_bats_click,distance=..6] run return 0
execute unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{y:{min:105.5}}}}} run return 0

execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"lady_bug"}] run return 0
function fossil_frights:tasks/hard/feed_the_bats/use

function fossil_frights:tasks/hard/feed_the_bats/complete
