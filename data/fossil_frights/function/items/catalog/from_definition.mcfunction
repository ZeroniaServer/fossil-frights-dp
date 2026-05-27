$function fossil_frights:$(function)
$data modify storage fossil_frights:items catalog.temp set from storage fossil_frights:items $(path)
$data modify storage fossil_frights:items catalog.temp.Slot set value $(slot)b
$data modify entity @e[type=minecraft:chest_minecart,tag=ff_admin_item_$(page),distance=..2,limit=1] Items append from storage fossil_frights:items catalog.temp
