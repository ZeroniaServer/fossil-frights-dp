scoreboard players set $creeper_fright ff_game_state 1
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0.3 0.5 0.3 0.02 12 force
execute at @s run particle minecraft:soul_fire_flame ~ ~2 ~ 0.25 0.4 0.25 0.01 8 force
execute at @s run playsound minecraft:entity.creeper.primed master @a ~ ~2 ~ 2 0.7
execute at @s run summon minecraft:creeper ~ ~2 ~ {Tags:["ff_creeper_fright"],Fuse:30,ignited:1b,ExplosionRadius:0,Rotation:[90f,0f]}
