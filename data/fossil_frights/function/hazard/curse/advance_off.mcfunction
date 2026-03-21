# Either restore for another blink, or leave the chosen sections off until the next cycle.
scoreboard players operation #curse_roll ff_hazard_rng = #curse_blinks ff_hazard_rng

execute if score #curse_roll ff_hazard_rng matches 1.. run function fossil_frights:hazard/curse/restore_all
execute if score #curse_roll ff_hazard_rng matches 1.. run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.45 1.35
execute if score #curse_roll ff_hazard_rng matches 1.. run scoreboard players remove #curse_blinks ff_hazard_rng 1
execute if score #curse_roll ff_hazard_rng matches 1.. run scoreboard players set #curse_state ff_hazard_rng 2
execute if score #curse_roll ff_hazard_rng matches 1.. store result score #curse_second_timer ff_hazard_rng run random value 2..5

execute unless score #curse_roll ff_hazard_rng matches 1.. store result score #curse_roll ff_hazard_rng run random value 1..100
execute unless score #curse_blinks ff_hazard_rng matches 1.. if score #curse_roll ff_hazard_rng matches 1..80 run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.45 0.7
execute unless score #curse_blinks ff_hazard_rng matches 1.. if score #curse_roll ff_hazard_rng matches 81..100 run function fossil_frights:hazard/curse/restore_all
execute unless score #curse_blinks ff_hazard_rng matches 1.. if score #curse_roll ff_hazard_rng matches 81..100 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.45 1.35
execute unless score #curse_blinks ff_hazard_rng matches 1.. run scoreboard players set #curse_timer ff_hazard_rng 80
execute unless score #curse_blinks ff_hazard_rng matches 1.. run scoreboard players set #curse_restore_timer ff_hazard_rng 0
execute unless score #curse_blinks ff_hazard_rng matches 1.. run scoreboard players set #curse_second_timer ff_hazard_rng 0
execute unless score #curse_blinks ff_hazard_rng matches 1.. run scoreboard players set #curse_state ff_hazard_rng 0
