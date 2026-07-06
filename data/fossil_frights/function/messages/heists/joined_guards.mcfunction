execute if entity @s[tag=ff_join_random] run return run function fossil_frights:messages/heists/joined_guards_random
tellraw @a [{"text":"ℹ ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" joined the ","color":"yellow"},{"text":"Guards","color":"gold"},{"text":".","color":"yellow"}]
