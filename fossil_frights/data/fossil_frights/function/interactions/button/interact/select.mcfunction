execute unless function fossil_frights:interactions/button/interact/check run return 0
execute if function fossil_frights:interactions/button/interact/check_state run function fossil_frights:interactions/button/interact/press
data remove entity @s interaction
