# Join guards but announce it as a random join (used by balanced multi-player /join random).
tag @s add ff_join_random
function fossil_frights:command/join_smart_guard
tag @s remove ff_join_random
