execute if score lava ff_hazard_active matches 1 run function fossil_frights:items/heists/ice_cannon/lava_hit_player
execute if score lava ff_hazard_active matches 1 run damage @s 1 minecraft:freeze
execute if score lava ff_hazard_active matches 1 run return 0
execute unless score @s ff_active_uuid_0 matches -2147483648..2147483647 run return 0
execute unless score @s ff_active_uuid_1 matches -2147483648..2147483647 run return 0
execute unless score @s ff_active_uuid_2 matches -2147483648..2147483647 run return 0
execute unless score @s ff_active_uuid_3 matches -2147483648..2147483647 run return 0
execute if entity @s[tag=ff_ice_frozen] run return 0
function fossil_frights:items/heists/ice_cannon/remove_owned_display
effect give @s minecraft:slowness 3 9 true
tag @s add ff_ice_frozen
function fossil_frights:items/heists/ice_cannon/overlay_show
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:entity_interaction_range base set 0
attribute @s minecraft:movement_speed base set 0.055
attribute @s minecraft:friction_modifier base set 0
scoreboard players set @s ff_heist_thaw_fx 0
summon minecraft:block_display ~ ~ ~ {Tags:["ff_ice_freeze","ff_ice_freeze_new"],block_state:{Name:"minecraft:frosted_ice",Properties:{age:"0"}},teleport_duration:1,start_interpolation:0,interpolation_duration:2,transformation:{right_rotation:[0,0,0,1],scale:[2,2,2],left_rotation:[0,0,0,1],translation:[-1,0,-1]},width:2,height:2}
function fossil_frights:items/heists/ice_cannon/claim_new_display
particle minecraft:snowflake ~ ~1.0 ~ 0.55 0.75 0.55 0.03 45 force
playsound minecraft:block.glass.place player @a[distance=..20] ~ ~ ~ 0.8 1.4
playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 1 1
