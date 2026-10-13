execute if score $defeat_anim ff_game_state matches 1 if entity @a[team=ff_guard,limit=1] run title @a[team=ff_guard] times 0s 4s 1s
execute if score $defeat_anim ff_game_state matches 1 if entity @a[team=ff_guard,limit=1] run title @a[team=ff_guard] title {"translate":"ff.boss.title.override","bold":true,"color":"red"}
execute if score $defeat_anim ff_game_state matches 1 if entity @a[team=ff_guard,limit=1] run title @a[team=ff_guard] subtitle {"translate":"ff.boss.title.1","font":"fossil_frights:title_overlays/defeat","italic":false,"shadow_color":0}
execute if score $defeat_anim ff_game_state matches 1 run posteffect add @a[team=ff_guard] fossil_frights:desaturate
schedule function fossil_frights:animations/defeat/title_fired_2 1t
