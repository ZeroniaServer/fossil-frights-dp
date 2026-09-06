scoreboard players set $is_near_someone ff_dummy 0
execute positioned ~-1.25 ~-0.499999 ~-1.25 as @e[type=player,dx=1.5,dy=0.249998,dz=1.5,predicate=fossil_frights:player/can_pick_up_items] store success score $is_near_someone ff_dummy run tag @s add ff_item_entity_pickup.target_candidate

execute if score $is_near_someone ff_dummy matches 0 run data modify entity @s[tag=ff_item_entity_pickup.was_near_someone] Owner set value [I;0,0,0,0]
execute if score $is_near_someone ff_dummy matches 1 run tag @p[distance=0..,tag=ff_item_entity_pickup.target_candidate] add ff_item_entity_pickup.target
execute if score $is_near_someone ff_dummy matches 1 run tag @a[x=0] remove ff_item_entity_pickup.target_candidate
execute if score $is_near_someone ff_dummy matches 1 run data modify entity @s[tag=!ff_item_entity_pickup.was_near_someone] Owner set from entity @a[limit=1,x=0,tag=ff_item_entity_pickup.target] UUID
execute if score $is_near_someone ff_dummy matches 1 run tag @a[x=0] remove ff_item_entity_pickup.target

execute if score $is_near_someone ff_dummy matches 0 run tag @s remove ff_item_entity_pickup.was_near_someone
execute if score $is_near_someone ff_dummy matches 1 run tag @s add ff_item_entity_pickup.was_near_someone
