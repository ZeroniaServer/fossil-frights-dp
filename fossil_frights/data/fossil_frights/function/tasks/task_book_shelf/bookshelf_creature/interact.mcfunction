advancement revoke @s only fossil_frights:start_room/task_book_shelf/bookshelf_creature_interact
execute unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
execute unless entity @e[type=minecraft:interaction,tag=ff_bookshelf_creature_hitbox,distance=..8,limit=1] run return 0
function fossil_frights:tasks/task_book_shelf/bookshelf_creature/claim
