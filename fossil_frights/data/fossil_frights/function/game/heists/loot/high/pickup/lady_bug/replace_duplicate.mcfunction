clear @s *[custom_data~{itemID:"lady_bug"}]
loot give @s loot fossil_frights:items/storage/lady_bug
scoreboard players operation @s ff_bat_bug_timer = $bat_bug_timer_heist_cfg ff_bat_bug_timer
scoreboard players set @s ff_bat_bug_bar 20
