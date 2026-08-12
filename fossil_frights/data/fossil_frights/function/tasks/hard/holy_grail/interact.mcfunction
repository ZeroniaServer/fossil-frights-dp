execute as @a[tag=ff_decorated_pot.player,limit=1] run clear @s *[minecraft:custom_data~{itemID:"golden_nautilus"}] 1
execute if entity @s[tag=ff_holy_grail.selected] run function fossil_frights:tasks/hard/holy_grail/complete_from_interaction
execute unless entity @s[tag=ff_holy_grail.selected] run function fossil_frights:tasks/hard/holy_grail/wrong_pot
data remove entity @s interaction
