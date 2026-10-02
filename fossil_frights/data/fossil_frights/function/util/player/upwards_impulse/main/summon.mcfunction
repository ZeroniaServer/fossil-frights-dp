data modify storage fossil_frights:nbt uuid set from entity @s UUID

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ff_upwards_impulse","ff_upwards_impulse.pre","ff_upwards_impulse.new"],Age:4,Duration:6,WaitTime:0,Radius:0.001,potion_contents:{potion:"minecraft:harming"}}
data modify entity @e[limit=1,distance=..0.001,type=minecraft:area_effect_cloud,tag=ff_upwards_impulse.new] Owner set from storage fossil_frights:nbt uuid
tag @e[limit=1,distance=..0.001,type=minecraft:area_effect_cloud,tag=ff_upwards_impulse.new] remove ff_upwards_impulse.new
summon minecraft:bat ~ ~ ~ {Tags:["ff_upwards_impulse","ff_upwards_impulse.pre"],NoAI:true,Silent:true,Health:0.001}

summon minecraft:creeper ~ ~-1.25 ~ {Tags:["ff_upwards_impulse"],Invulnerable:true,Fuse:0,ExplosionRadius:1}
summon minecraft:creeper ~ ~-1.25 ~ {Tags:["ff_upwards_impulse"],Invulnerable:true,Fuse:0,ExplosionRadius:1}
summon minecraft:creeper ~ ~-1.25 ~ {Tags:["ff_upwards_impulse"],Invulnerable:true,Fuse:0,ExplosionRadius:1}
summon minecraft:creeper ~ ~-1.25 ~ {Tags:["ff_upwards_impulse"],Invulnerable:true,Fuse:0,ExplosionRadius:1}

execute positioned 128 ~ ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ff_upwards_impulse","ff_upwards_impulse.post","ff_upwards_impulse.new"],Age:4,Duration:6,WaitTime:0,Radius:0.001,potion_contents:{potion:"minecraft:harming"}}
execute positioned 128 ~ ~ run data modify entity @e[limit=1,distance=..0.001,type=minecraft:area_effect_cloud,tag=ff_upwards_impulse.new] Owner set from storage fossil_frights:nbt uuid
execute positioned 128 ~ ~ run tag @e[limit=1,distance=..0.001,type=minecraft:area_effect_cloud,tag=ff_upwards_impulse.new] remove ff_upwards_impulse.new
execute positioned 128 ~ ~ run summon minecraft:bat ~ ~ ~ {Tags:["ff_upwards_impulse","ff_upwards_impulse.post"],NoAI:true,Silent:true,Health:0.001}

data remove storage fossil_frights:nbt uuid
