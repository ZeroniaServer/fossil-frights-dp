execute if entity @s[type=minecraft:fishing_bobber] on origin run function fossil_frights:items/heists/trap/types/explosive/trigger_item/break_fishing_rod
execute on origin run advancement grant @s[predicate=fossil_frights:player/team/thief] only fossil_frights:02_achievements/heists_defusal
particle minecraft:explosion
kill @s

return 1
