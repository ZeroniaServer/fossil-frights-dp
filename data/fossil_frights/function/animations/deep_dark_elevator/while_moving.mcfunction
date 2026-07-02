# Set position & chain length
data modify storage fossil_frights:deep_dark_elevator args set value {}
scoreboard players operation $elevator_height ff_deep_dark_elevator = $max_height_from_base ff_deep_dark_elevator
scoreboard players operation $elevator_height ff_deep_dark_elevator *= #100 ff_constant
scoreboard players operation $elevator_height ff_deep_dark_elevator *= $step ff_deep_dark_elevator
scoreboard players operation $elevator_height ff_deep_dark_elevator /= $duration_ticks ff_deep_dark_elevator
execute store result storage fossil_frights:deep_dark_elevator args.y double 0.01 run scoreboard players add $elevator_height ff_deep_dark_elevator 6800
execute as @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] run function fossil_frights:animations/deep_dark_elevator/set_height_macro with storage fossil_frights:deep_dark_elevator args
item modify entity @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] contents {function:"minecraft:set_custom_model_data",floats:{values:[{type:"minecraft:sum",summands:[84,{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$elevator_height"},score:"ff_deep_dark_elevator",scale:-0.01}]}],mode:"replace_all"}}

# Knock standing players off ("they lose balance") as a fix for falling through when moving up and bumpy ride while moving down.
execute at @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] positioned ~-0.5 ~1 ~-1.2 as @a[dx=0,predicate=!fossil_frights:entity/has_vehicle] positioned ~ ~ ~0.7 if entity @s[dx=0] at @s run tp @s ~ ~ ~0.3
execute as @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] at @s positioned ~-0.5 ~0.5 ~-0.5 as @a[dy=3,predicate=!fossil_frights:entity/has_vehicle] run damage @s 0.0000000001 minecraft:mob_attack by @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator]
execute as @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] at @s positioned ~-0.6875 ~4 ~-0.6875 as @a[dx=0.375,dy=0,dz=0.375,predicate=!fossil_frights:entity/has_vehicle] run damage @s 0.0000000001 minecraft:mob_attack by @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator]

# Sounds
scoreboard players add $clicking_sound_cooldown ff_deep_dark_elevator 1
scoreboard players operation $clicking_sound_cooldown ff_deep_dark_elevator %= #10 ff_constant
execute if score $clicking_sound_cooldown ff_deep_dark_elevator matches 0 at @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] run playsound minecraft:item.spyglass.use master @a ~ ~ ~ 2 0

scoreboard players add $pitched_sound_cooldown ff_deep_dark_elevator 1
scoreboard players operation $pitched_sound_cooldown ff_deep_dark_elevator %= #5 ff_constant
execute if score $pitched_sound_cooldown ff_deep_dark_elevator matches 0 run scoreboard players set $sound_pitch ff_deep_dark_elevator 32
execute if score $pitched_sound_cooldown ff_deep_dark_elevator matches 0 run scoreboard players operation $sound_pitch ff_deep_dark_elevator *= $step ff_deep_dark_elevator
execute if score $pitched_sound_cooldown ff_deep_dark_elevator matches 0 run scoreboard players operation $sound_pitch ff_deep_dark_elevator /= $duration_ticks ff_deep_dark_elevator
execute if score $pitched_sound_cooldown ff_deep_dark_elevator matches 0 store result storage fossil_frights:deep_dark_elevator args.pitch float 0.01 run scoreboard players add $sound_pitch ff_deep_dark_elevator 80
execute if score $pitched_sound_cooldown ff_deep_dark_elevator matches 0 at @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] run function fossil_frights:animations/deep_dark_elevator/play_pitched_sound with storage fossil_frights:deep_dark_elevator args

data remove storage fossil_frights:deep_dark_elevator args
