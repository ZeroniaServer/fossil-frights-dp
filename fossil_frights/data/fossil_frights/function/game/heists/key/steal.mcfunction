execute unless score @s ff_heist_guard_has_key matches 1 run return 0
execute store result storage fossil_frights:heist_key id int 1 run scoreboard players get @s ff_heist_guard_key_id
scoreboard players set @a[tag=ff_heist_key_return_thief,limit=1] ff_heist_key_stolen_this_punch 0
execute as @a[tag=ff_heist_key_return_thief,limit=1] run function fossil_frights:game/heists/key/insert_key with storage fossil_frights:heist_key
execute unless entity @a[tag=ff_heist_key_return_thief,scores={ff_heist_key_stolen_this_punch=1},limit=1] run return 0
scoreboard players set @s ff_heist_guard_has_key 0
scoreboard players reset @s ff_key_cooldown
item replace entity @s container.8 with minecraft:paper[minecraft:item_model="fossil_frights:items/frights/key/cooldown/key_cooldown",minecraft:item_name={translate:'ff.item.missing_key',color:'gray'},minecraft:custom_data={ff_heist_missing_key:true,ff_prevent_drop:true}] 1
scoreboard players set @a[tag=ff_heist_key_return_thief,limit=1] ff_heist_key_stolen_this_punch 1
