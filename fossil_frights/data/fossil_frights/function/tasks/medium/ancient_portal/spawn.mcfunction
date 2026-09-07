function fossil_frights:tasks/medium/ancient_portal/cleanup
summon minecraft:interaction 51.5 71 51.5 {width:5,height:2,response:true,Tags:["ff_ancient_portal","ff_ancient_portal_click"]}
execute as @e[type=#fossil_frights:display_entities,tag=ff_ancient_portal] run data modify entity @s view_range set value 0
