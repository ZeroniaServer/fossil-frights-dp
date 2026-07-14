execute if score $size_roll ff_sulfur matches 1 run data modify storage fossil_frights:sulfur_strikers ball.size set value 4
execute if score $size_roll ff_sulfur matches 2..7 run data modify storage fossil_frights:sulfur_strikers ball.size set value 0.5
execute if score $size_roll ff_sulfur matches 8..13 run data modify storage fossil_frights:sulfur_strikers ball.size set value 0.75
execute if score $size_roll ff_sulfur matches 14..19 run data modify storage fossil_frights:sulfur_strikers ball.size set value 1
execute if score $size_roll ff_sulfur matches 20..25 run data modify storage fossil_frights:sulfur_strikers ball.size set value 1.25
execute if score $size_roll ff_sulfur matches 26..30 run data modify storage fossil_frights:sulfur_strikers ball.size set value 1.5
