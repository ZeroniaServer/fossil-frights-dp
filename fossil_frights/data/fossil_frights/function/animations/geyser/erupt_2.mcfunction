playsound minecraft:block.potent_sulfur.geyser_eruption block @a[predicate=fossil_frights:location/room/basement] -3.5 72.0 8.5 0.75 1.2
particle minecraft:geyser{water_blocks:2} -3.5 72.0 8.5

execute store result storage fossil_frights:geyser geyser_number int 1 run random value 1..2
execute if data storage fossil_frights:geyser {geyser_number:2} run data modify storage fossil_frights:geyser geyser_number set value 3
execute store result storage fossil_frights:geyser delay int 1 run random value 20..300
function fossil_frights:animations/geyser/macro with storage fossil_frights:geyser {}
