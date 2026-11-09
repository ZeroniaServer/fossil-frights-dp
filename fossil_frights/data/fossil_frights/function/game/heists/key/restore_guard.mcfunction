execute store result storage fossil_frights:heist_key id int 1 run scoreboard players get @s ff_heist_guard_key_id
scoreboard players set #heist_key_still_in_play ff_dummy 0
function fossil_frights:game/heists/key/check_in_play with storage fossil_frights:heist_key
execute unless score #heist_key_still_in_play ff_dummy matches 1 run scoreboard players set @s ff_heist_guard_has_key 1
execute unless score #heist_key_still_in_play ff_dummy matches 1 run item replace entity @s container.8 with minecraft:paper[minecraft:item_model="fossil_frights:items/frights/key/key",minecraft:item_name={translate:'ff.item.guard_key',color:'yellow'},minecraft:custom_data={itemID:"key",ff_heist_guard_key:true,ff_prevent_drop:true}] 1
execute unless score #heist_key_still_in_play ff_dummy matches 1 run scoreboard players reset @s ff_key_cooldown
execute unless score #heist_key_still_in_play ff_dummy matches 1 if predicate fossil_frights:game_state/game_running if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:player/name_tag/tick
