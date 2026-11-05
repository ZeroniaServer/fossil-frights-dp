advancement revoke @s only fossil_frights:items/febreeze_rod/using

# sound
tag @s add ff_febreeze_rod.player
execute unless score @s ff_febreeze_rod_using_state matches 1.. run playsound fossil_frights:task.smelly_toilet player @s ~ ~ ~ 0.2 1 0.15
execute unless score @s ff_febreeze_rod_using_state matches 1.. run playsound fossil_frights:task.smelly_toilet player @a[tag=!ff_febreeze_rod.player] ~ ~ ~ 0.5 1
tag @s remove ff_febreeze_rod.player

scoreboard players set @s ff_febreeze_rod_using_state 2
schedule function fossil_frights:items/febreeze_rod/check_use_end 1t append
schedule function fossil_frights:items/febreeze_rod/check_use_end 2t append

# particles
execute rotated as @s positioned 0.0 0.0 0.0 summon marker run function fossil_frights:items/febreeze_rod/particles/get_direction
data modify storage fossil_frights:febreeze_rod velocity set value {}
data modify storage fossil_frights:febreeze_rod velocity.x set compute default float {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"fossil_frights:febreeze_rod",path:"direction[0]"},{type:"minecraft:uniform",min:-0.5,max:0.5}]}
data modify storage fossil_frights:febreeze_rod velocity.y set compute default float {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"fossil_frights:febreeze_rod",path:"direction[1]"},{type:"minecraft:uniform",min:-0.1,max:0.5}]}
data modify storage fossil_frights:febreeze_rod velocity.z set compute default float {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"fossil_frights:febreeze_rod",path:"direction[2]"},{type:"minecraft:uniform",min:-0.5,max:0.5}]}
execute anchored eyes positioned ^ ^-0.4 ^0.5 run function fossil_frights:items/febreeze_rod/particles/create_particle with storage fossil_frights:febreeze_rod velocity
data modify storage fossil_frights:febreeze_rod velocity.x set compute default float {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"fossil_frights:febreeze_rod",path:"direction[0]"},{type:"minecraft:uniform",min:-0.5,max:0.5}]}
data modify storage fossil_frights:febreeze_rod velocity.y set compute default float {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"fossil_frights:febreeze_rod",path:"direction[1]"},{type:"minecraft:uniform",min:-0.1,max:0.5}]}
data modify storage fossil_frights:febreeze_rod velocity.z set compute default float {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"fossil_frights:febreeze_rod",path:"direction[2]"},{type:"minecraft:uniform",min:-0.5,max:0.5}]}
execute anchored eyes positioned ^ ^-0.4 ^0.5 run function fossil_frights:items/febreeze_rod/particles/create_particle with storage fossil_frights:febreeze_rod velocity

# tracking
execute if predicate fossil_frights:game_state/game_running unless entity @s[tag=ff_febreeze_rod.sprayed_smelly_toilet] anchored eyes positioned ^ ^ ^ run function fossil_frights:items/febreeze_rod/check/smelly_toilet
execute if predicate fossil_frights:game_state/game_running unless entity @s[tag=ff_febreeze_rod.sprayed_ancient_portal] anchored eyes positioned ^ ^ ^ run function fossil_frights:items/febreeze_rod/check/ancient_portal
