execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.9 1
title @a[team=ff_guard] times 10 70 20
execute as @a[team=ff_guard] run function fossil_frights:game/start_room/settings/speedrun/runtime/show_victory_subtitle
title @a[team=ff_guard] title [{"text":"","font":"fossil-frights:title_overlays/victory_title","italic":false,"shadow_color":0}]
tag @a[team=ff_guard] remove ff_map_claimed
tag @a[team=ff_guard] remove ff_map_auto_given
function fossil_frights:game/victory/fireworks/museum
execute as @a[team=ff_guard] at @s run function fossil_frights:game/victory/fireworks/player
