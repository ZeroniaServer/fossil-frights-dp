data remove storage fossil_frights:leaderboards login
data modify storage fossil_frights:leaderboards login.name set from entity @s bukkit.lastKnownName
function fossil_frights:leaderboards/check_revoked with storage fossil_frights:leaderboards login
execute unless score @s ff_lb_generation matches -2147483648..2147483647 run scoreboard players operation @s ff_lb_generation = $current ff_lb_generation
execute unless score @s ff_lb_generation = $current ff_lb_generation run function fossil_frights:leaderboards/reset_player_generation
