scoreboard players set $bogged_fright ff_game_state 1
setblock 67 78 74 air strict
setblock 66 78 74 air strict
particle minecraft:poof 67.5 77.5 74.5 0.35 0.6 0.35 0.03 18 force
particle minecraft:campfire_cosy_smoke 67.5 78.0 74.5 0.25 0.5 0.25 0.02 10 force
playsound minecraft:entity.skeleton.ambient master @a 67.5 77.0 74.5 2 0.6
playsound minecraft:entity.wither_skeleton.ambient master @a 67.5 77.0 74.5 1.5 0.8
summon minecraft:bogged 67 77 74 {PersistenceRequired:true,Rotation:[90,0],Tags:["ff_bogged_fright"],Health:1}
item replace entity @e[type=minecraft:bogged,tag=ff_bogged_fright,sort=nearest,limit=1] weapon.mainhand with air
attribute @e[type=minecraft:bogged,tag=ff_bogged_fright,sort=nearest,limit=1] minecraft:max_health base set 1
attribute @e[type=minecraft:bogged,tag=ff_bogged_fright,sort=nearest,limit=1] minecraft:movement_speed base set 0.3125
effect give @e[type=minecraft:bogged,tag=ff_bogged_fright,sort=nearest,limit=1] minecraft:weakness 1000000 255 true
