execute unless entity @a[tag=ff_active,limit=1] run return 0
gamemode spectator @s
tp @s @a[tag=ff_active,limit=1]
spectate @a[tag=ff_active,limit=1] @s
function fossil_frights:messages/spectator/now_spectating
