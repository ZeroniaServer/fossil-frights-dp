function fossil_frights:hazard/floods/rotate_start
scoreboard players add #floods_turns ff_hazard_rng 1
scoreboard players set #floods_turn_on ff_hazard_rng 0
execute at @e[type=minecraft:item_display,tag=ff_floods_shutoff_valve,limit=1] run playsound minecraft:entity.fox.hurt master @a[distance=..18] ~ ~ ~ 1.0 1.4
execute if score #floods_turns ff_hazard_rng >= #floods_turn_target ff_hazard_rng run function fossil_frights:hazard/stop/floods
