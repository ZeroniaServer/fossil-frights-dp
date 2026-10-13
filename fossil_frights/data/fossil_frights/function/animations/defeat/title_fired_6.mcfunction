execute unless score $defeat_anim ff_game_state matches 1 run return 0
title @a[team=ff_guard] subtitle {"translate":"ff.boss.title.6","font":"fossil_frights:title_overlays/defeat","italic":false,"shadow_color":0}
schedule function fossil_frights:animations/defeat/title_fired_7 1t
