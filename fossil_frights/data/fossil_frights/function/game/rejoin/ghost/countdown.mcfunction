scoreboard players operation $rejoin_display_tick ff_rejoin_ticks = @s ff_rejoin_ticks
scoreboard players operation $rejoin_display_tick ff_rejoin_ticks %= #ticks_per_second ff_constant
execute unless score $rejoin_display_tick ff_rejoin_ticks matches 0 run return 0
scoreboard players operation @s ff_rejoin_minutes = @s ff_rejoin_ticks
scoreboard players operation @s ff_rejoin_minutes /= #ticks_per_minute ff_constant
scoreboard players operation @s ff_rejoin_sec_tens = @s ff_rejoin_ticks
scoreboard players operation @s ff_rejoin_sec_tens /= #ticks_per_second ff_constant
scoreboard players operation @s ff_rejoin_sec_tens %= #60 ff_constant
scoreboard players operation @s ff_rejoin_sec_ones = @s ff_rejoin_sec_tens
scoreboard players operation @s ff_rejoin_sec_tens /= #10 ff_constant
scoreboard players operation @s ff_rejoin_sec_ones %= #10 ff_constant
function fossil_frights:game/rejoin/ghost/countdown_display
