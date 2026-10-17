execute unless score $defeat_anim ff_game_state matches 1 run return 0
execute unless entity @a[predicate=fossil_frights:player/team/guard,limit=1] run return 0

title @a[predicate=fossil_frights:player/team/guard] times 0s 2s 1s
execute as @a[predicate=fossil_frights:player/team/guard] run title @s subtitle {translate:"ff.boss.hey",with:[{translate:"ff.boss",color:"red"},{selector:"@s"}]}
title @a[predicate=fossil_frights:player/team/guard] title ""
