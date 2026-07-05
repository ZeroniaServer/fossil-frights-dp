execute if entity @s[team=ff_guard] run loot replace entity @s hotbar.8 loot fossil_frights:items/compass/loot
$execute if entity @s[team=ff_guard] run item modify entity @s hotbar.8 {function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]},tracked:false}}}
execute if entity @s[team=ff_thief] run loot replace entity @s hotbar.1 loot fossil_frights:items/compass/loot
$execute if entity @s[team=ff_thief] run item modify entity @s hotbar.1 {function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]},tracked:false}}}
