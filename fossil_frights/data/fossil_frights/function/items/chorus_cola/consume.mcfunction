advancement revoke @s only fossil_frights:consume_chorus_cola

# Disappear effects
execute at @s run particle minecraft:portal ~ ~1 ~ 0 0.5 0 0.5 50
tag @s add chorus_cola.player
execute at @s run playsound minecraft:entity.player.teleport master @a[tag=!chorus_cola.player] ~ ~ ~
tag @s remove chorus_cola.player

# Teleport
function fossil_frights:items/chorus_cola/teleport/main

# Appear effects
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0.5 0 0.5 50
tag @s add chorus_cola.player
execute at @s run playsound minecraft:entity.player.teleport master @a[tag=!chorus_cola.player] ~ ~ ~
tag @s remove chorus_cola.player
execute at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 1 1 1

execute unless predicate fossil_frights:entity/effects/blindness run effect give @s minecraft:blindness 1 0 true

execute positioned as @e[limit=1,sort=random] facing entity @e[limit=1,sort=random,distance=0.001..] feet run rotate @s ~ 0
