execute unless function fossil_frights:interactions/decorated_pots/interact/check run return 0
execute at @s align xyz as @e[type=minecraft:item_display,tag=ff_decorated_pot.display,dx=0,dy=0,dz=0] run function fossil_frights:interactions/decorated_pots/wiggle/reject_start
data remove entity @s interaction
