# Pick exactly one unique easy task from the remaining unselected pool.
scoreboard players set #task_remaining ff_task_state 0
execute unless score $check_security_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $fire_pottery_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $check_ankylo_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $climb_the_tower_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $count_shells_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $count_toes_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $bathroom_leak_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $toilet_clog_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $polish_bell_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $lock_register_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $static_buildup_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $reset_salt_level_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $reset_fountain_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $visit_jurassic_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $visit_neogene_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $visit_silurian_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $visit_archean_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $dive_into_well_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $swat_flies_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $water_temp_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $fix_cracked_egg_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $tnt_test_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $sweep_popcorn_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $dig_sand_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $fix_mars_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute if score #task_remaining ff_task_state matches ..0 run return 0

execute if score #task_remaining ff_task_state matches 1 store result score #task_pick ff_task_state run random value 1..1
execute if score #task_remaining ff_task_state matches 2 store result score #task_pick ff_task_state run random value 1..2
execute if score #task_remaining ff_task_state matches 3 store result score #task_pick ff_task_state run random value 1..3
execute if score #task_remaining ff_task_state matches 4 store result score #task_pick ff_task_state run random value 1..4
execute if score #task_remaining ff_task_state matches 5 store result score #task_pick ff_task_state run random value 1..5
execute if score #task_remaining ff_task_state matches 6 store result score #task_pick ff_task_state run random value 1..6
execute if score #task_remaining ff_task_state matches 7 store result score #task_pick ff_task_state run random value 1..7
execute if score #task_remaining ff_task_state matches 8 store result score #task_pick ff_task_state run random value 1..8
execute if score #task_remaining ff_task_state matches 9 store result score #task_pick ff_task_state run random value 1..9
execute if score #task_remaining ff_task_state matches 10 store result score #task_pick ff_task_state run random value 1..10
execute if score #task_remaining ff_task_state matches 11 store result score #task_pick ff_task_state run random value 1..11
execute if score #task_remaining ff_task_state matches 12 store result score #task_pick ff_task_state run random value 1..12
execute if score #task_remaining ff_task_state matches 13 store result score #task_pick ff_task_state run random value 1..13
execute if score #task_remaining ff_task_state matches 14 store result score #task_pick ff_task_state run random value 1..14
execute if score #task_remaining ff_task_state matches 15 store result score #task_pick ff_task_state run random value 1..15
execute if score #task_remaining ff_task_state matches 16 store result score #task_pick ff_task_state run random value 1..16
execute if score #task_remaining ff_task_state matches 17 store result score #task_pick ff_task_state run random value 1..17
execute if score #task_remaining ff_task_state matches 18 store result score #task_pick ff_task_state run random value 1..18
execute if score #task_remaining ff_task_state matches 19 store result score #task_pick ff_task_state run random value 1..19
execute if score #task_remaining ff_task_state matches 20 store result score #task_pick ff_task_state run random value 1..20
execute if score #task_remaining ff_task_state matches 21 store result score #task_pick ff_task_state run random value 1..21
execute if score #task_remaining ff_task_state matches 22 store result score #task_pick ff_task_state run random value 1..22
execute if score #task_remaining ff_task_state matches 23 store result score #task_pick ff_task_state run random value 1..23
execute if score #task_remaining ff_task_state matches 24 store result score #task_pick ff_task_state run random value 1..24
execute if score #task_remaining ff_task_state matches 25 store result score #task_pick ff_task_state run random value 1..25

scoreboard players set #task_cursor ff_task_state 0
scoreboard players set #task_done ff_task_state 0

execute unless score $check_security_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $check_security_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/check_security/selected
execute unless score $check_security_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $fire_pottery_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $fire_pottery_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/fire_pottery/selected
execute unless score $fire_pottery_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $check_ankylo_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $check_ankylo_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/check_ankylo/selected
execute unless score $check_ankylo_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $climb_the_tower_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $climb_the_tower_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/climb_the_tower/selected
execute unless score $climb_the_tower_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $count_shells_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $count_shells_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/count_shells/selected
execute unless score $count_shells_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $count_toes_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $count_toes_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/count_toes/selected
execute unless score $count_toes_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $bathroom_leak_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $bathroom_leak_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/bathroom_leak/selected
execute unless score $bathroom_leak_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $toilet_clog_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $toilet_clog_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/toilet_clog/selected
execute unless score $toilet_clog_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $polish_bell_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $polish_bell_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/polish_bell/selected
execute unless score $polish_bell_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $lock_register_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $lock_register_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/lock_register/selected
execute unless score $lock_register_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $static_buildup_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $static_buildup_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/static_buildup/selected
execute unless score $static_buildup_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $reset_salt_level_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $reset_salt_level_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/reset_salt_level/selected
execute unless score $reset_salt_level_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $reset_fountain_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $reset_fountain_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/reset_fountain/selected
execute unless score $reset_fountain_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $visit_jurassic_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $visit_jurassic_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/visit_jurassic/selected
execute unless score $visit_jurassic_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $visit_neogene_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $visit_neogene_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/visit_neogene/selected
execute unless score $visit_neogene_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $visit_silurian_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $visit_silurian_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/visit_silurian/selected
execute unless score $visit_silurian_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $visit_archean_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $visit_archean_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/visit_archean/selected
execute unless score $visit_archean_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $dive_into_well_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $dive_into_well_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/dive_into_well/selected
execute unless score $dive_into_well_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $swat_flies_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $swat_flies_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/swat_flies/selected
execute unless score $swat_flies_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $water_temp_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $water_temp_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/water_temp/selected
execute unless score $water_temp_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $fix_cracked_egg_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $fix_cracked_egg_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/fix_cracked_egg/selected
execute unless score $fix_cracked_egg_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $tnt_test_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $tnt_test_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/tnt_test/selected
execute unless score $tnt_test_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $sweep_popcorn_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $sweep_popcorn_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/sweep_popcorn/selected
execute unless score $sweep_popcorn_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $dig_sand_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $dig_sand_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/dig_sand/selected
execute unless score $dig_sand_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $fix_mars_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $fix_mars_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/fix_mars/selected
execute unless score $fix_mars_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
