advancement revoke @s only fossil_frights:items/key/click
scoreboard players add @s ff_key_cooldown 0
execute if predicate fossil_frights:game_state/heist_mode_active run scoreboard players set @s ff_key_cooldown 0
execute unless score @s ff_key_cooldown matches 0 run return 0
execute unless items entity @s weapon.* *[custom_data~{itemID:"key"}] run return 0

execute if items entity @s weapon.mainhand *[custom_data~{itemID:"key"}] run swing @s mainhand
execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"key"}] run swing @s offhand

execute at @e[type=minecraft:interaction,tag=ff_lock_click,sort=nearest,limit=1,distance=..3] positioned ~ ~-0.25 ~ if entity @e[type=minecraft:item_display,tag=ff_key_anim,distance=..1.25,limit=1] run return 0
scoreboard players set @s ff_lock_look 0
execute at @e[type=minecraft:interaction,tag=ff_lock_click,sort=nearest,limit=1,distance=..3] positioned ~ ~-0.25 ~ run function fossil_frights:key/anim_from_click
execute if score @s ff_lock_look matches 1 run playsound fossil-frights:animations.key master @s ~ ~ ~ 1 1
scoreboard players set @s ff_scan 6
execute unless score @s ff_lock_look matches 1 anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:key/anim_raycast
execute if score @s ff_lock_look matches 1 run title @s actionbar {translate:"ff.unlocking"}
execute if score @s ff_lock_look matches 1 if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:game/heists/items/consume_key
execute if score @s ff_lock_look matches 1 unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:key/start_cooldown
