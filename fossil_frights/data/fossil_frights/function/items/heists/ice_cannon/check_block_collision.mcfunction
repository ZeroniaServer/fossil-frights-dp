execute if block ~ ~ ~ #fossil_frights:ice_projectile_pass_through run return 0
execute if block ~ ~ ~ #minecraft:doors[open=false,half=upper] positioned ~ ~-1 ~ run function fossil_frights:interactions/door/open_here
execute if block ~ ~ ~ #minecraft:doors[open=false,half=lower] positioned ~ ~ ~ run function fossil_frights:interactions/door/open_here
execute if block ~ ~ ~ #minecraft:doors[open=true] run return 0
function fossil_frights:items/heists/ice_cannon/impact
