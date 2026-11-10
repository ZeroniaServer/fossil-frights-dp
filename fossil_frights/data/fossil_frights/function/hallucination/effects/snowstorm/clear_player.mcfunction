posteffect remove @s fossil_frights:snow_storm/activate
posteffect remove @s fossil_frights:snow_storm/deactivate
tag @s remove ff_snowstorm_active_guard
execute unless score @s ff_active_uuid_0 matches -2147483648..2147483647 run return 0
execute unless score @s ff_active_uuid_1 matches -2147483648..2147483647 run return 0
execute unless score @s ff_active_uuid_2 matches -2147483648..2147483647 run return 0
execute unless score @s ff_active_uuid_3 matches -2147483648..2147483647 run return 0
function fossil_frights:entity/match/active
kill @e[type=minecraft:item_display,tag=fog_marker,tag=ff_snowstorm_fog_marker,predicate=fossil_frights:entity/match/active]
