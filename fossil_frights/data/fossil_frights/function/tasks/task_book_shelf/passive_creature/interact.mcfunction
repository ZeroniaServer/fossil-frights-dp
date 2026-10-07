advancement revoke @s only fossil_frights:start_room/task_book_shelf/passive_creature_interact
execute unless entity @e[type=minecraft:strider,tag=ff_bookshelf_passive_creature,distance=..8,limit=1] run return 0
execute as @e[type=minecraft:strider,tag=ff_bookshelf_passive_creature,distance=..8,limit=1] at @s run playsound minecraft:entity.creaking.death master @a[distance=..32] ~ ~ ~ 1 1
function fossil_frights:tasks/task_book_shelf/passive_creature/cleanup
