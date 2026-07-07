execute at @s as @a[distance=..0.000001,gamemode=spectator,team=ff_spectator] run spectate
execute if entity @a[team=ff_guard,limit=1] run spectate @r[team=ff_guard,limit=1] @s
execute unless entity @a[team=ff_guard,limit=1] run spectate @r[team=ff_thief,limit=1] @s
function fossil_frights:messages/spectator/now_spectating
