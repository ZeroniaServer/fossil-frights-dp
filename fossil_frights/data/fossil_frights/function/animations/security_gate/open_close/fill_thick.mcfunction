$execute align y if predicate {condition:"minecraft:location_check",predicate:{position:{y:$(min_y)}}} run function fossil_frights:animations/security_gate/open_close/update_water_blocks
$execute align y positioned ~ $(min_y) ~ positioned ^$(half_width) ^ ^ positioned ^-0.5 ^0.5 ^ run fill ^-$(width_minus_one) ^ ^ ~ $(max_y_minus_one) ~ air replace barrier strict
$execute if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:$(max_y)}}}} run return 0
$execute align y positioned ^$(half_width) ^ ^ positioned ^-0.5 ^0.5 ^ run fill ^-$(width_minus_one) ^ ^ ~ $(max_y_minus_one) ~ barrier replace #fossil_frights:security_gate_replaceable strict
