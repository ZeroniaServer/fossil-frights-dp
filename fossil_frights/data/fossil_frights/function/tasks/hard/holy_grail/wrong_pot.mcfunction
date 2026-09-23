execute as @a[tag=ff_decorated_pot.player,limit=1] run function fossil_frights:player/actionbar/show/generic/holy_grail.wrong_pot
execute at @s as @e[type=minecraft:item_display,tag=ff_decorated_pot.display,distance=..1,sort=nearest,limit=1] at @s run function fossil_frights:interactions/decorated_pots/interact/accept/start
