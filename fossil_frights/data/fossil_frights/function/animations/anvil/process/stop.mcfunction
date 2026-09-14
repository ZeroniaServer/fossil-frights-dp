kill @e[type=minecraft:item_display,tag=ff_anvil.process]
kill @e[tag=ff_anvil.display]
data remove storage fossil_frights:anvil input
data remove storage fossil_frights:anvil step
schedule clear fossil_frights:animations/anvil/process/step
