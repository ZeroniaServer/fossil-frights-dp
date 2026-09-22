data modify storage fossil_frights:security_gate gates set value {\
    "5x6": {speed: 2.22222222222, height: 6, width: 5}, \
    "humans_exhibit": {speed: 5.0, height: 3, width: 3, visual_height: 7}, \
    "tank_room": {speed: 5.0, height: 2, width: 2, visual_height: 4}, \
    "stairwell_entry": {speed: 5.0, height: 2, width: 2, visual_height: 3}, \
    "garage": {speed: 3.33333333333, height: 3, width: 3, thick: true}, \
    "ruins": {speed: 5.0, height: 3, width: 3}, \
}

kill @e[tag=ff_security_gate]
execute positioned 0.5 94.0 42.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"north"}
execute positioned 18.5 80.0 43.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"north"}
execute positioned 15.5 80.0 61.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"north"}
execute positioned -14.5 80.0 61.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"north"}
execute positioned 15.5 80.0 16.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"east"}
execute positioned -14.5 80.0 16.5 run function fossil_frights:animations/security_gate/summon/main {type:"5x6",facing:"east"}
execute positioned 22.5 94.0 23.5 run function fossil_frights:animations/security_gate/summon/main {type:"humans_exhibit",facing:"north"}
execute positioned 27.5 80.0 48.5 run function fossil_frights:animations/security_gate/summon/main {type:"ruins",facing:"east"}
execute positioned -22.5 70.0 48.0 run function fossil_frights:animations/security_gate/summon/main {type:"tank_room",facing:"east"}
execute positioned -2.5 70.0 39.5 run function fossil_frights:animations/security_gate/summon/main {type:"garage",facing:"north"}
execute positioned -25.5 80.0 63.0 run function fossil_frights:animations/security_gate/summon/main {type:"stairwell_entry",facing:"east"}
execute positioned -26.5 94.0 62.0 run function fossil_frights:animations/security_gate/summon/main {type:"stairwell_entry",facing:"east"}
