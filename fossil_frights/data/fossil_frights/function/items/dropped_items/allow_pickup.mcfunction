scoreboard players set $is_near_someone ff_dummy 0
execute positioned ~-1.25 ~-0.499999 ~-1.25 store success score $is_near_someone ff_dummy as @e[type=player,dx=1.5,dy=0.249998,dz=1.5,predicate=fossil_frights:player/can_pick_up_items] run tag @s add ff_item_entity_pickup.target_candidate

execute if score $is_near_someone ff_dummy matches 0 if entity @s[tag=ff_item_entity_pickup.was_near_someone] run data modify entity @s Owner set value [I;0,0,0,0]
execute if score $is_near_someone ff_dummy matches 0 run return run tag @s remove ff_item_entity_pickup.was_near_someone

# blocks in the way
execute align xz if block ~-1 ~ ~ #fossil_frights:is_full_cube if block ~ ~ ~-1 #fossil_frights:is_full_cube positioned ~-10 ~-5 ~-10 run tag @a[dx=9,dy=9,dz=9,tag=ff_item_entity_pickup.target_candidate] remove ff_item_entity_pickup.target_candidate
execute align xz if block ~-1 ~ ~ #fossil_frights:is_full_cube if block ~ ~ ~1 #fossil_frights:is_full_cube positioned ~-10 ~-5 ~1 run tag @a[dx=9,dy=9,dz=9,tag=ff_item_entity_pickup.target_candidate] remove ff_item_entity_pickup.target_candidate
execute align xz if block ~1 ~ ~ #fossil_frights:is_full_cube if block ~ ~ ~-1 #fossil_frights:is_full_cube positioned ~1 ~-5 ~-10 run tag @a[dx=9,dy=9,dz=9,tag=ff_item_entity_pickup.target_candidate] remove ff_item_entity_pickup.target_candidate
execute align xz if block ~1 ~ ~ #fossil_frights:is_full_cube if block ~ ~ ~1 #fossil_frights:is_full_cube positioned ~1 ~-5 ~1 run tag @a[dx=9,dy=9,dz=9,tag=ff_item_entity_pickup.target_candidate] remove ff_item_entity_pickup.target_candidate

execute align xz if block ~-1 ~ ~ #fossil_frights:fences_bars_and_panes[north=true,south=true] positioned ~-0.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~ ~ ~-1 align xz if block ~-1 ~ ~ #fossil_frights:fences_bars_and_panes[south=true] positioned ~-0.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~ ~ ~1 align xz if block ~-1 ~ ~ #fossil_frights:fences_bars_and_panes[north=true] positioned ~-0.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~0.5 ~ ~ align xz if block ~-1 ~ ~ #fossil_frights:fences_bars_and_panes[north=true,south=true] positioned ~-0.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~0.5 ~ ~-1 align xz if block ~-1 ~ ~ #fossil_frights:fences_bars_and_panes[south=true] positioned ~-0.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~0.5 ~ ~1 align xz if block ~-1 ~ ~ #fossil_frights:fences_bars_and_panes[north=true] positioned ~-0.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute align xz if block ~1 ~ ~ #fossil_frights:fences_bars_and_panes[north=true,south=true] positioned ~-8.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~ ~ ~-1 align xz if block ~1 ~ ~ #fossil_frights:fences_bars_and_panes[south=true] positioned ~-8.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~ ~ ~1 align xz if block ~1 ~ ~ #fossil_frights:fences_bars_and_panes[north=true] positioned ~-8.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~-0.5 ~ ~ align xz if block ~1 ~ ~ #fossil_frights:fences_bars_and_panes[north=true,south=true] positioned ~-8.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~-0.5 ~ ~-1 align xz if block ~1 ~ ~ #fossil_frights:fences_bars_and_panes[south=true] positioned ~-8.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~-0.5 ~ ~1 align xz if block ~1 ~ ~ #fossil_frights:fences_bars_and_panes[north=true] positioned ~-8.5 ~-5 ~-5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute align xz if block ~ ~ ~-1 #fossil_frights:fences_bars_and_panes[east=true,west=true] positioned ~-5 ~-5 ~-0.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~-1 ~ ~ align xz if block ~ ~ ~-1 #fossil_frights:fences_bars_and_panes[east=true] positioned ~-5 ~-5 ~-0.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~1 ~ ~ align xz if block ~ ~ ~-1 #fossil_frights:fences_bars_and_panes[west=true] positioned ~-5 ~-5 ~-0.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~ ~ ~0.5 align xz if block ~ ~ ~-1 #fossil_frights:fences_bars_and_panes[east=true,west=true] positioned ~-5 ~-5 ~-0.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~-1 ~ ~0.5 align xz if block ~ ~ ~-1 #fossil_frights:fences_bars_and_panes[east=true] positioned ~-5 ~-5 ~-0.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~1 ~ ~0.5 align xz if block ~ ~ ~-1 #fossil_frights:fences_bars_and_panes[west=true] positioned ~-5 ~-5 ~-0.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute align xz if block ~ ~ ~1 #fossil_frights:fences_bars_and_panes[east=true,west=true] positioned ~-5 ~-5 ~-8.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~-1 ~ ~ align xz if block ~ ~ ~1 #fossil_frights:fences_bars_and_panes[east=true] positioned ~-5 ~-5 ~-8.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~1 ~ ~ align xz if block ~ ~ ~1 #fossil_frights:fences_bars_and_panes[west=true] positioned ~-5 ~-5 ~-8.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~ ~ ~-0.5 align xz if block ~ ~ ~1 #fossil_frights:fences_bars_and_panes[east=true,west=true] positioned ~-5 ~-5 ~-8.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~-1 ~ ~-0.5 align xz if block ~ ~ ~1 #fossil_frights:fences_bars_and_panes[east=true] positioned ~-5 ~-5 ~-8.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate
execute positioned ~1 ~ ~-0.5 align xz if block ~ ~ ~1 #fossil_frights:fences_bars_and_panes[west=true] positioned ~-5 ~-5 ~-8.5 as @a[x=0,tag=ff_item_entity_pickup.target_candidate] unless entity @s[dx=9,dy=9,dz=9] run tag @s remove ff_item_entity_pickup.target_candidate

execute unless entity @a[limit=1,x=0,tag=ff_item_entity_pickup.target_candidate] run scoreboard players set $is_near_someone ff_dummy 0
execute if score $is_near_someone ff_dummy matches 0 if entity @s[tag=ff_item_entity_pickup.was_near_someone] run data modify entity @s Owner set value [I;0,0,0,0]
execute if score $is_near_someone ff_dummy matches 0 run return run tag @s remove ff_item_entity_pickup.was_near_someone

# pickup
data modify entity @s Owner set from entity @p[distance=0..,tag=ff_item_entity_pickup.target_candidate] UUID
tag @a remove ff_item_entity_pickup.target_candidate
tag @s add ff_item_entity_pickup.was_near_someone
