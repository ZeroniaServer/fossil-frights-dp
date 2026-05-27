$execute at @s run function fossil_frights:items/util/load_to_storage {loot:"$(loot)",storage:"fossil_frights:items",path:"temp.lock_reward"}
data modify entity @e[type=minecraft:item_display,tag=ff_key_anim,sort=nearest,limit=1,distance=..0.3] item.components."minecraft:custom_data".ff_reward set from storage fossil_frights:items temp.lock_reward
