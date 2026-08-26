execute as @a[tag=ff_decorated_pot.player,limit=1] run clear @s *[minecraft:custom_data~{itemID:"golden_nautilus"}] 1
data remove entity @s interaction
execute if entity @s[tag=ff_holy_grail.selected] run return run function fossil_frights:tasks/hard/holy_grail/complete_from_interaction
function fossil_frights:tasks/hard/holy_grail/wrong_pot
