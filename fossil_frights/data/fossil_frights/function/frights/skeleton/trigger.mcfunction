scoreboard players set $skeleton_fright ff_game_state 1
tp @e[type=minecraft:skeleton,tag=ff_skeleton_prop] 0 0 0
particle minecraft:poof 25 93.9 11 0.35 0.6 0.35 0.03 18 force
particle minecraft:campfire_cosy_smoke 25 94.0 11 0.25 0.5 0.25 0.02 10 force
playsound minecraft:entity.skeleton.ambient master @a 25 93 11 2 0.6
playsound minecraft:entity.wither_skeleton.ambient master @a 25 93 11 1.5 0.8
summon minecraft:skeleton 25 93 11 {Tags:["ff_skeleton_fright"],PersistenceRequired:true,Rotation:[90,0],Health:1}
item replace entity @e[type=minecraft:skeleton,tag=ff_skeleton_fright,sort=nearest,limit=1] weapon.mainhand with air
attribute @e[type=minecraft:skeleton,tag=ff_skeleton_fright,sort=nearest,limit=1] minecraft:max_health base set 1
attribute @e[type=minecraft:skeleton,tag=ff_skeleton_fright,sort=nearest,limit=1] minecraft:movement_speed base set 0.3125
effect give @e[type=minecraft:skeleton,tag=ff_skeleton_fright,sort=nearest,limit=1] minecraft:weakness 1000000 255 true
