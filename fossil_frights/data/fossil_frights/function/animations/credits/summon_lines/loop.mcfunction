data remove storage fossil_frights:credits type
data modify storage fossil_frights:credits type set from storage fossil_frights:credits credits[0].type
execute if data storage fossil_frights:credits {type:"banner"} run return run function fossil_frights:animations/credits/summon_lines/type/banner
execute if data storage fossil_frights:credits {type:"lines"} run return run function fossil_frights:animations/credits/summon_lines/type/lines
execute if data storage fossil_frights:credits {type:"two_columns"} run return run function fossil_frights:animations/credits/summon_lines/type/two_columns

data remove storage fossil_frights:credits credits[0]
execute if data storage fossil_frights:credits credits[0] run return run function fossil_frights:animations/credits/summon_lines/loop
