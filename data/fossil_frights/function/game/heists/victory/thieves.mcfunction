execute as @a[tag=ff_heist_thief] at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.9 1
title @a[tag=ff_heist_thief] times 10 70 20
execute as @a[tag=ff_heist_thief] run function fossil_frights:game/speedrun/show_victory_subtitle
title @a[tag=ff_heist_thief] title [{"text":"","font":"fossil-frights:victory_title","italic":false,"shadow_color":0}]
tag @a[tag=ff_heist_thief] remove ff_map_claimed
tag @a[tag=ff_heist_thief] remove ff_map_auto_given
function fossil_frights:game/victory/fireworks/museum
execute as @a[tag=ff_heist_thief] at @s run function fossil_frights:game/victory/fireworks/player
