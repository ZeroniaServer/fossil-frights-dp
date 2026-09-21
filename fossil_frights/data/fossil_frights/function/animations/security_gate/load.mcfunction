scoreboard objectives add ff_security_gate_cache.speed dummy
scoreboard objectives add ff_security_gate_cache.min_y dummy
scoreboard objectives add ff_security_gate_cache.max_y dummy

data modify storage fossil_frights:security_gate gates set value {\
    "5x6": {speed: 2.22222222222, height: 6, width: 5}, \
    "3x3": {speed: 5.0, height: 3, width: 3}, \
    "2x2": {speed: 5.0, height: 2, width: 2}, \
    "garage": {speed: 3.33333333333, height: 3, width: 3, thick: true}, \
}

execute store result score @e[type=minecraft:item_display,tag=ff_security_gate,predicate=fossil_frights:entity/security_gate/type/5x6] ff_security_gate_cache.speed run data get storage fossil_frights:security_gate gates."5x6".speed 1000
execute store result score @e[type=minecraft:item_display,tag=ff_security_gate,predicate=fossil_frights:entity/security_gate/type/3x3] ff_security_gate_cache.speed run data get storage fossil_frights:security_gate gates."3x3".speed 1000
execute store result score @e[type=minecraft:item_display,tag=ff_security_gate,predicate=fossil_frights:entity/security_gate/type/2x2] ff_security_gate_cache.speed run data get storage fossil_frights:security_gate gates."2x2".speed 1000
execute store result score @e[type=minecraft:item_display,tag=ff_security_gate,predicate=fossil_frights:entity/security_gate/type/garage] ff_security_gate_cache.speed run data get storage fossil_frights:security_gate gates."garage".speed 1000

# sound pitch is   1.05   at the top, and   0.9   at the bottom
# playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05
# playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.9

kill @e[tag=ff_security_gate]
execute positioned 0.5 94.0 42.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"north"}
execute positioned 18.5 80.0 43.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"north"}
execute positioned 15.5 80.0 61.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"north"}
execute positioned -14.5 80.0 61.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"north"}
execute positioned 15.5 80.0 16.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"east"}
execute positioned -14.5 80.0 16.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"east"}
execute positioned 22.5 94.0 23.5 run function fossil_frights:animations/security_gate/summon/main {type:"3x3",facing:"north"}
execute positioned 27.5 80.0 48.5 run function fossil_frights:animations/security_gate/summon/main {type:"3x3",facing:"east"}
execute positioned -22.5 70.0 48.0 run function fossil_frights:animations/security_gate/summon/main {type:"2x2",facing:"east"}
execute positioned -2.5 70.0 39.5 run function fossil_frights:animations/security_gate/summon/main {type:"garage",facing:"north"}
execute positioned -25.5 80.0 63.0 run function fossil_frights:animations/security_gate/summon/main {type:"2x2",facing:"east"}
execute positioned -26.5 94.0 62.0 run function fossil_frights:animations/security_gate/summon/main {type:"2x2",facing:"east"}
