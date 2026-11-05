function fossil_frights:tasks/hard/snowball_fight/cleanup
summon minecraft:interaction 42 80 35 {width:1.1f,height:1.1f,response:true,Tags:["ff_snowball_fight_click"]}
summon minecraft:marker 62 89 42 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 70 80 38 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 66 82 46 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 71 80 55 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 69 85 70 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 64 85 79 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 37 85 73 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 50 80 46 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 63 77 72 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 62 80 73 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 62 87 56 {Tags:["ff_snowball_fight_spawn"]}
summon minecraft:marker 56 89 36 {Tags:["ff_snowball_fight_spawn"]}
execute as @e[type=minecraft:marker,tag=ff_snowball_fight_spawn,sort=random,limit=3] at @s run summon minecraft:snow_golem ~ ~ ~ {Tags:["ff_snowball_fight_golem"],Team:"ff_snow_fight",PersistenceRequired:true,Health:1024.0f,attributes:[{id:"minecraft:max_health",base:1024.0d}],active_effects:[{id:"minecraft:fire_resistance",duration:-1,show_particles:false},{id:"minecraft:regeneration",amplifier:4,duration:-1,show_particles:false}]}
kill @e[type=minecraft:marker,tag=ff_snowball_fight_spawn]
