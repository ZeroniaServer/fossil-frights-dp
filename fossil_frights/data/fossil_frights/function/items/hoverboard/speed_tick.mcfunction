#frozen: stop hoverboard
execute if entity @s[tag=ff_ice_frozen] on vehicle run attribute @s minecraft:flying_speed base set 0
execute if entity @s[tag=ff_ice_frozen] on vehicle run attribute @s minecraft:flying_speed modifier remove fossil_frights:hoverboard_sprint
execute if entity @s[tag=ff_ice_frozen] run tag @s remove ff_hoverboard_sprinting
execute if entity @s[tag=ff_ice_frozen] on vehicle run tag @s remove ff_hoverboard_sprinting

#heavy: slow hoverboard
execute unless entity @s[tag=ff_ice_frozen] if entity @s[tag=ff_holding_heavy] on vehicle run attribute @s minecraft:flying_speed base set 0.04
execute unless entity @s[tag=ff_ice_frozen] if entity @s[tag=ff_holding_heavy] on vehicle run attribute @s minecraft:flying_speed modifier remove fossil_frights:hoverboard_sprint
execute unless entity @s[tag=ff_ice_frozen] if entity @s[tag=ff_holding_heavy] run tag @s remove ff_hoverboard_sprinting
execute unless entity @s[tag=ff_ice_frozen] if entity @s[tag=ff_holding_heavy] on vehicle run tag @s remove ff_hoverboard_sprinting

execute unless entity @s[tag=ff_ice_frozen] unless entity @s[tag=ff_holding_heavy] on vehicle run attribute @s minecraft:flying_speed base reset
