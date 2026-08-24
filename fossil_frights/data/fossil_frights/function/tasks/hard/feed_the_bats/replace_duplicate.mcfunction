clear @s *[custom_data~{itemID:"lady_bug"}]
loot give @s loot fossil_frights:items/storage/lady_bug
scoreboard players set @s ff_bat_bug_timer 0
function fossil_frights:tasks/hard/feed_the_bats/start_timer
