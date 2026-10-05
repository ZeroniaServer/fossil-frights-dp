execute if score $size_roll ff_sulfur matches 1 run data modify storage fossil_frights:sulfur_strikers ball.size set value 3.5
execute if score $size_roll ff_sulfur matches 2..5 run data modify storage fossil_frights:sulfur_strikers ball.size set value 0.6
execute if score $size_roll ff_sulfur matches 6..9 run data modify storage fossil_frights:sulfur_strikers ball.size set value 0.75
execute if score $size_roll ff_sulfur matches 10..13 run data modify storage fossil_frights:sulfur_strikers ball.size set value 1
execute if score $size_roll ff_sulfur matches 14..17 run data modify storage fossil_frights:sulfur_strikers ball.size set value 1.25
execute if score $size_roll ff_sulfur matches 18..20 run data modify storage fossil_frights:sulfur_strikers ball.size set value 1.5
