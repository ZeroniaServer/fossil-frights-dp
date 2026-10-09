$execute align y if predicate {type:"minecraft:location_check",predicate:{position:{y:$(min_y)}}} run function fossil_frights:animations/security_gate/open_close/update_water_blocks
$execute align y positioned ~ $(min_y) ~ positioned ^$(half_width) ^ ^ positioned ^-0.5 ^0.5 ^ run fill ^-$(width_minus_one) ^ ^ ~ $(max_y_minus_one) ~ air replace crimson_fence strict
$execute if predicate {type:"minecraft:location_check",predicate:{position:{y:{min:$(max_y)}}}} run return 0
$execute align y positioned ^$(half_width) ^ ^ positioned ^-0.5 ^0.5 ^ run fill ^-$(width_minus_one) ^ ^ ~ $(max_y_minus_one) ~ crimson_fence[east=true,west=true] replace #fossil_frights:security_gate_replaceable strict
