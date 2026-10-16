advancement grant @a[predicate=fossil_frights:player/team/guard] only fossil_frights:02_achievements/heists_guardin
execute as @a[predicate=fossil_frights:player/team/guard] at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.9 1
title @a[predicate=fossil_frights:player/team/guard] times 10 70 20
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:game/start_room/settings/speedrun/runtime/show_victory_subtitle
title @a[predicate=fossil_frights:player/team/guard] title [{"text":"","font":"fossil_frights:title_overlays/victory_title","italic":false,"shadow_color":0}]
tag @a[predicate=fossil_frights:player/team/guard] remove ff_map_claimed
tag @a[predicate=fossil_frights:player/team/guard] remove ff_map_auto_given
function fossil_frights:game/victory/fireworks/museum
execute as @a[predicate=fossil_frights:player/team/guard] at @s run function fossil_frights:game/victory/fireworks/player
