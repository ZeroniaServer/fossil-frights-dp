scoreboard players operation $parkour_best_time ff_parkour_display = @s ff_parkour_time
scoreboard players set $parkour_best_exists ff_parkour_display 1
data modify storage fossil_frights:parkour best.name set from entity @s bukkit.lastKnownName
data modify storage fossil_frights:parkour best.profile.name set from entity @s bukkit.lastKnownName
data modify storage fossil_frights:parkour best.profile.id set from entity @s UUID
function fossil_frights:parkour/display/rebuild

