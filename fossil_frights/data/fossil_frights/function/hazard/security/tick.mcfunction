execute if score security ff_hazard_active matches 0 run return 0
scoreboard players remove #security_alarm_timer ff_hazard_rng 1
execute if score #security_alarm_timer ff_hazard_rng matches ..0 run scoreboard players set #security_alarm_timer ff_hazard_rng 12
execute if score #security_alarm_timer ff_hazard_rng matches 12 positioned -27 71 40 run playsound minecraft:block.note_block.bit master @a[distance=..25,predicate=fossil_frights:location/can_hear_security_beeps] ~ ~ ~ 3.0 1.3
