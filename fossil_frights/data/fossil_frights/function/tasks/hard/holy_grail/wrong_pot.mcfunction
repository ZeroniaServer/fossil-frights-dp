execute as @a[tag=ff_decorated_pot.player,limit=1] run title @s actionbar {"text":"I am not holy but thank you","color":"red"}
execute at @s align xyz as @e[type=minecraft:item_display,tag=ff_decorated_pot.display,dx=0,dy=0,dz=0,limit=1] run function fossil_frights:interactions/decorated_pots/interact/accept/start
