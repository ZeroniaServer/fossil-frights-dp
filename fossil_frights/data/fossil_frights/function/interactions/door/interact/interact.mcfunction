scoreboard players set #block ff_dummy 0
execute if entity @s[advancements={fossil_frights:interactions/door/interact={block=true}}] run scoreboard players set #block ff_dummy 1
advancement revoke @s only fossil_frights:interactions/door/interact

execute if score #block ff_dummy matches 1 run return run function fossil_frights:interactions/door/interact/update_nearby

tag @s add ff_door.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..15,type=interaction,tag=ff_door.interaction] at @s run function fossil_frights:interactions/door/interact/select
tag @s remove ff_door.player
