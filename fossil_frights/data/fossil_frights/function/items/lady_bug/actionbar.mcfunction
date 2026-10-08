item replace block 0 0 0 container.0 with stone[charged_projectiles=[]]
item replace block 0 0 0 {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"container.0"},component:"charged_projectiles"} from entity @s fossil_frights:player/filtered/lady_bug
data modify storage fossil_frights:lady_bug inputs set value []
data modify storage fossil_frights:lady_bug inputs append from block 0 0 0 Items[0].components.minecraft:charged_projectiles[].components.minecraft:custom_data.ff_lady_bug.despawn_timestamp
data modify storage fossil_frights:lady_bug outputs set value []
function fossil_frights:items/lady_bug/actionbar_loop

scoreboard players display numberformat @s ff_actionbar_manager.slot.ladybug_timer fixed {storage:"fossil_frights:lady_bug",nbt:"outputs[]",interpret:true,separator:" "}
scoreboard players set @s ff_actionbar_manager.slot.ladybug_timer 1
schedule function fossil_frights:player/actionbar/manager 1t append
