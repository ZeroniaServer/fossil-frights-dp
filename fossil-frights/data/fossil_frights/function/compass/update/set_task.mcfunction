loot replace entity @s hotbar.8 loot fossil_frights:items/compass/task
$item modify entity @s hotbar.8 {function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]},tracked:false}}}
