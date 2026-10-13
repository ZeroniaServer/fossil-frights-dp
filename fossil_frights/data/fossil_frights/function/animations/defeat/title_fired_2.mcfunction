execute unless score $defeat_anim ff_game_state matches 1 run return 0
title @a[team=ff_guard] subtitle {"translate":"ff.boss.title.2","font":"fossil_frights:title_overlays/defeat","italic":false,"shadow_color":0}
execute as @a[team=ff_guard] at @s run playsound minecraft:entity.dragon_fireball.explode master @s ~ ~ ~ 1 1
schedule function fossil_frights:animations/defeat/title_fired_3 1t
