advancement revoke @s only fossil_frights:consume_chorus_cola

execute at @s run particle minecraft:portal ~ ~1 ~ 0 0.5 0 0.5 50
tag @s add chorus_cola.player
execute at @s run playsound minecraft:entity.player.teleport master @a[tag=!chorus_cola.player] ~ ~ ~
tag @s remove chorus_cola.player

function fossil_frights:items/chorus_cola/teleport/main

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0.5 0 0.5 50
tag @s add chorus_cola.player
execute at @s run playsound minecraft:entity.player.teleport master @a[tag=!chorus_cola.player] ~ ~ ~
tag @s remove chorus_cola.player
execute at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 1 1 1
#execute at @s run playsound minecraft:entity.player.burp master @s ~ ~ ~ 1 1 1
