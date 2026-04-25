advancement revoke @s only fossil_frights:lock_click
scoreboard players add @s ff_key_cooldown 0
execute unless score @s ff_key_cooldown matches 0 run return 0
execute unless data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick"}} run return 0
scoreboard players set @s ff_lock_look 0
execute at @e[type=minecraft:interaction,tag=ff_lock_click,sort=nearest,limit=1,distance=..5] positioned ~ ~0.5 ~ run function fossil_frights:key/anim_from_click
scoreboard players set @s ff_scan 16
execute unless score @s ff_lock_look matches 1 anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:key/anim_raycast
execute if score @s ff_lock_look matches 1 run title @s actionbar {"text":"Unlocking..."}
execute if score @s ff_lock_look matches 1 run function fossil_frights:key/start_cooldown
