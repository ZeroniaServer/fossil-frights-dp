scoreboard players set $is_near_someone ff_dummy 0
execute positioned ~-1.25 ~-0.499999 ~-1.25 as @e[type=player,dx=1.5,dy=0.249998,dz=1.5,predicate=fossil_frights:player/can_pick_up_items] store success score $is_near_someone ff_dummy run tag @s add ff_item_entity_pickup.target_candidate

execute if score $is_near_someone ff_dummy matches 0 if entity @s[tag=ff_item_entity_pickup.was_near_someone] run data modify entity @s Owner set value [I;0,0,0,0]
execute if score $is_near_someone ff_dummy matches 1 run data modify entity @s Owner set from entity @p[distance=0..,tag=ff_item_entity_pickup.target_candidate] UUID
execute if score $is_near_someone ff_dummy matches 1 run tag @a[x=0] remove ff_item_entity_pickup.target_candidate

execute if score $is_near_someone ff_dummy matches 0 run tag @s remove ff_item_entity_pickup.was_near_someone
execute if score $is_near_someone ff_dummy matches 1 run tag @s add ff_item_entity_pickup.was_near_someone
