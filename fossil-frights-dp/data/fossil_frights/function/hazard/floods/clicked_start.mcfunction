function fossil_frights:hazard/floods/rotate_shutoff
execute if entity @s[team=ff_thief,gamemode=!spectator] run advancement grant @s only fossil_frights:02_achievements/heists_intentionally_hazardous
scoreboard players add #floods_turn_on ff_hazard_rng 1
scoreboard players set #floods_turns ff_hazard_rng 0
execute at @e[type=minecraft:item_display,tag=floods_shutoff_valve,limit=1] run playsound minecraft:entity.fox.hurt master @a[distance=..18] ~ ~ ~ 1.0 1.4
execute if score #floods_turn_on ff_hazard_rng matches 10.. run function fossil_frights:hazard/start/floods
