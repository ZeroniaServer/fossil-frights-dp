scoreboard players set $creeper_fright ff_game_state 1
particle minecraft:campfire_cosy_smoke 37.5 70.0 69.5 0.3 0.5 0.3 0.02 12 force
particle minecraft:soul_fire_flame 37.5 70.0 69.5 0.25 0.4 0.25 0.01 8 force
playsound minecraft:entity.creeper.primed master @a 37.5 70.0 69.5 2 0.7
summon minecraft:creeper 37.5 70.0 69.5 {Tags:["ff_creeper_fright"],Fuse:30,ignited:true,ExplosionRadius:0,Rotation:[90,0]}
