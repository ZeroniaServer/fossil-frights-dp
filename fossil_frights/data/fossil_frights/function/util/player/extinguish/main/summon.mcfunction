data modify storage fossil_frights:nbt uuid set from entity @s UUID

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ff_extinguish","ff_extinguish.new"],Age:4,Duration:6,WaitTime:0,Radius:0.001,potion_contents:{potion:"minecraft:harming"}}
data modify entity @e[limit=1,distance=..0.001,type=minecraft:area_effect_cloud,tag=ff_extinguish.new] Owner set from storage fossil_frights:nbt uuid
tag @e[limit=1,distance=..0.001,type=minecraft:area_effect_cloud,tag=ff_extinguish.new] remove ff_extinguish.new
summon minecraft:bat ~ ~ ~ {Tags:["ff_extinguish","ff_extinguish.pre"],NoAI:true,Silent:true,Health:0.001}

summon minecraft:splash_potion ~ ~1.5 ~ {Tags:["ff_extinguish"],Item:{id:"minecraft:splash_potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}},Motion:[0,-1,0]}

execute positioned ~ ~0.6 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ff_extinguish","ff_extinguish.new"],Age:4,Duration:6,WaitTime:0,Radius:0.001,potion_contents:{potion:"minecraft:harming"}}
execute positioned ~ ~0.6 ~ run data modify entity @e[limit=1,distance=..0.001,type=minecraft:area_effect_cloud,tag=ff_extinguish.new] Owner set from storage fossil_frights:nbt uuid
execute positioned ~ ~0.6 ~ run tag @e[limit=1,distance=..0.001,type=minecraft:area_effect_cloud,tag=ff_extinguish.new] remove ff_extinguish.new
execute positioned ~ ~0.6 ~ run summon minecraft:bat ~ ~ ~ {Tags:["ff_extinguish","ff_extinguish.post"],NoAI:true,Silent:true,Health:0.001}

data remove storage fossil_frights:nbt uuid
