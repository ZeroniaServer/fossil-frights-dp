data modify storage fossil_frights:feed_the_fish particle_data set value {x_velocity:0,y_velocity:0,z_velocity:0}
execute store result storage fossil_frights:feed_the_fish particle_data.start_position_y float 0.01 run random value 8120..8180
execute store result storage fossil_frights:feed_the_fish particle_data.start_position_z float 0.01 run random value 6620..6680
execute store result storage fossil_frights:feed_the_fish particle_data.x_velocity float 0.01 run random value -100..-20
execute store result storage fossil_frights:feed_the_fish particle_data.y_velocity float 0.01 run random value -10..100
execute store result storage fossil_frights:feed_the_fish particle_data.z_velocity float 0.01 run random value -100..100
execute store result storage fossil_frights:feed_the_fish particle_data.speed_multiplier float 0.01 run random value 50..100
function fossil_frights:tasks/medium/feed_the_fish/particle/bubble/spawn_macro with storage fossil_frights:feed_the_fish particle_data
data remove storage fossil_frights:feed_the_fish particle_data
