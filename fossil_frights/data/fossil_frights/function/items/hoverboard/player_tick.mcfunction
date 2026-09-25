execute if predicate fossil_frights:player/input/sneak run return run function fossil_frights:items/hoverboard/disable
execute unless entity @s[nbt={RootVehicle:{Entity:{Tags:["ff_hoverboard"]}}}] run function fossil_frights:items/hoverboard/disable
