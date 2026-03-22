execute if score #gate_crush_lock ff_hazard_rng matches 1 run return 0
scoreboard players set #gate_crush_lock ff_hazard_rng 1
gamerule showDeathMessages false
tellraw @a [{"selector":"@s","separator":"","color":"white"},{"text":" was crushed by a security gate","color":"white"}]
kill @s
gamerule showDeathMessages true
