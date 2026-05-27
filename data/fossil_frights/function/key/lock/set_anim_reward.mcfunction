$function fossil_frights:$(function)
$data modify entity @e[type=minecraft:item_display,tag=ff_key_anim,sort=nearest,limit=1,distance=..0.3] item.components."minecraft:custom_data".ff_reward set from storage fossil_frights:items $(path)
