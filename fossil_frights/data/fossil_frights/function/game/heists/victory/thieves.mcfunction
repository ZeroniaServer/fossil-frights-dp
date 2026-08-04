advancement grant @a[team=ff_thief] only fossil_frights:02_achievements/heists_thievin
function fossil_frights:advancements/heists/check_greedy
execute as @a[team=ff_thief] at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.9 1
title @a[team=ff_thief] times 10 70 20
execute as @a[team=ff_thief] run function fossil_frights:game/start_room/settings/speedrun/runtime/show_victory_subtitle
title @a[team=ff_thief] title [{"text":"","font":"fossil-frights:title_overlays/victory_title","italic":false,"shadow_color":0}]
tag @a[team=ff_thief] remove ff_map_claimed
tag @a[team=ff_thief] remove ff_map_auto_given
function fossil_frights:game/victory/fireworks/museum
execute as @a[team=ff_thief] at @s run function fossil_frights:game/victory/fireworks/player
