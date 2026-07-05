data remove storage fossil_frights:anvil source
data modify storage fossil_frights:anvil source.stack set from entity @e[type=minecraft:item,tag=ff_anvil_input,distance=..0.75,limit=1,sort=nearest] Item
data modify entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1,sort=nearest] item set from storage fossil_frights:anvil source.stack
kill @e[type=minecraft:item,tag=ff_anvil_input,distance=..0.75,limit=1,sort=nearest]
