execute store result storage fossil_frights:geyser geyser_number int 1 run random value 1..3
execute store result storage fossil_frights:geyser delay int 1 run random value 20..300
function fossil_frights:animations/geyser/macro with storage fossil_frights:geyser {}
