execute unless function fossil_frights:interactions/decorated_pots/interact/check run return 0
execute if score $holy_grail_sel ff_task_state matches 1 if score $holy_grail_done ff_task_state matches 0 if items entity @a[tag=ff_decorated_pot.player,limit=1] weapon.mainhand *[minecraft:custom_data~{itemID:"golden_nautilus"}] run return run function fossil_frights:tasks/hard/holy_grail/interact
execute at @s as @e[type=minecraft:item_display,tag=ff_decorated_pot.display,distance=..1,sort=nearest,limit=1] at @s run function fossil_frights:interactions/decorated_pots/wiggle/reject_start
data remove entity @s interaction
