scoreboard players operation $ant_best_score ff_ant_display = @s ff_ant_score
scoreboard players operation @s ff_ant_top_score = @s ff_ant_score
scoreboard players set $ant_best_exists ff_ant_display 1
data modify storage fossil_frights:ant_fight best.name set from entity @s bukkit.lastKnownName
data modify storage fossil_frights:ant_fight best.profile.name set from entity @s bukkit.lastKnownName
data modify storage fossil_frights:ant_fight best.profile.id set from entity @s UUID
function fossil_frights:ant_fight/display/rebuild
