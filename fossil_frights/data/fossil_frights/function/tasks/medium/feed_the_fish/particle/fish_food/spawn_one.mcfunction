data modify storage fossil_frights:feed_the_fish particle_data set value {color:0x432818,target:[0,0,0]}
execute store result storage fossil_frights:feed_the_fish particle_data.duration int 1 run random value 60..120
execute store result storage fossil_frights:feed_the_fish particle_data.target[0] float 0.01 run random value 800..1100
execute store result storage fossil_frights:feed_the_fish particle_data.target[1] float 0.01 run random value 8150..8600
execute store result storage fossil_frights:feed_the_fish particle_data.target[2] float 0.01 run random value 6500..6800
function fossil_frights:tasks/medium/feed_the_fish/particle/fish_food/spawn_macro with storage fossil_frights:feed_the_fish
data remove storage fossil_frights:feed_the_fish particle_data
