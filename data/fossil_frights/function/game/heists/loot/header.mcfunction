execute store result storage fossil_frights:ff_heists_header ff_heist_amount_stolen int 1 run scoreboard players get $heist_loot ff_heist
scoreboard objectives modify ff_heist_sidebar displayname [{"text":"$","color":"gold"},{"storage":"fossil_frights:ff_heists_header","nbt":"ff_heist_amount_stolen","color":"gold"},{"text":"/$1000","color":"gold"}]
data remove storage fossil_frights:ff_heists_header ff_heist_amount_stolen
