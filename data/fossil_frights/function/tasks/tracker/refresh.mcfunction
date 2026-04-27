function fossil_frights:tasks/tracker/hide
function fossil_frights:tasks/tracker/update_title
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if entity @a[limit=1] run function fossil_frights:tasks/tracker/show

scoreboard players reset $tt_check_security ff_task_tracker
scoreboard players reset $tt_fire_pottery ff_task_tracker
scoreboard players reset $tt_check_ankylo ff_task_tracker
scoreboard players reset $tt_climb_the_tower ff_task_tracker
scoreboard players reset $tt_count_shells ff_task_tracker
scoreboard players reset $tt_count_toes ff_task_tracker
scoreboard players reset $tt_bathroom_leak ff_task_tracker
scoreboard players reset $tt_toilet_clog ff_task_tracker
scoreboard players reset $tt_polish_bell ff_task_tracker
scoreboard players reset $tt_lock_register ff_task_tracker
scoreboard players reset $tt_static_buildup ff_task_tracker
scoreboard players reset $tt_reset_salt_level ff_task_tracker
scoreboard players reset $tt_reset_fountain ff_task_tracker
scoreboard players reset $tt_visit_jurassic ff_task_tracker
scoreboard players reset $tt_visit_neogene ff_task_tracker
scoreboard players reset $tt_visit_silurian ff_task_tracker
scoreboard players reset $tt_visit_archean ff_task_tracker
scoreboard players reset $tt_dive_into_well ff_task_tracker
scoreboard players reset $tt_swat_flies ff_task_tracker
scoreboard players reset $tt_water_temp ff_task_tracker
scoreboard players reset $tt_fix_cracked_egg ff_task_tracker
scoreboard players reset $tt_tnt_test ff_task_tracker
scoreboard players reset $tt_sweep_popcorn ff_task_tracker
scoreboard players reset $tt_dig_sand ff_task_tracker
scoreboard players reset $tt_chlorinify ff_task_tracker
scoreboard players reset $tt_credit_reel ff_task_tracker
scoreboard players reset $tt_cool_it ff_task_tracker
scoreboard players reset $tt_heat_it_up ff_task_tracker
scoreboard players reset $tt_sponge_up_spill ff_task_tracker
scoreboard players reset $tt_feed_the_plants ff_task_tracker
scoreboard players reset $tt_refill_coffee ff_task_tracker
scoreboard players reset $tt_coffee_refill ff_task_tracker
scoreboard players reset $tt_replenish_soap ff_task_tracker
scoreboard players reset $tt_restock_plushies ff_task_tracker
scoreboard players reset $tt_revitalize_coral ff_task_tracker
scoreboard players reset $tt_shark_bait ff_task_tracker
scoreboard players reset $tt_smelly_toilet ff_task_tracker
scoreboard players reset $tt_wash_muddy_sherd ff_task_tracker
scoreboard players reset $tt_feed_parrot ff_task_tracker
scoreboard players reset $tt_water_crops ff_task_tracker
scoreboard players reset $tt_picnic_with_trike ff_task_tracker
scoreboard players reset $tt_nautilus_guard ff_task_tracker
scoreboard players reset $tt_feed_the_fish ff_task_tracker
scoreboard players reset $tt_popcorn_buckets ff_task_tracker
scoreboard players reset $tt_star_gazing ff_task_tracker
scoreboard players reset $tt_glowberry_trees ff_task_tracker
scoreboard players reset $tt_return_the_key ff_task_tracker
scoreboard players reset $tt_skincare_routine ff_task_tracker
scoreboard players reset $tt_feed_the_bats ff_task_tracker
scoreboard players reset $tt_a_c_reset ff_task_tracker
scoreboard players reset $tt_deforst_freezer ff_task_tracker
scoreboard players reset $tt_the_lost_code ff_task_tracker
scoreboard players reset $tt_fertilize_plant ff_task_tracker
scoreboard players reset $tt_basketball_dance ff_task_tracker
scoreboard players reset $tt_final_task ff_task_tracker

execute if score $check_security_sel ff_task_state matches 1 run scoreboard players operation $tt_check_security ff_task_tracker = #line_check_security ff_task_state
execute if score $check_security_sel ff_task_state matches 1 unless score $check_security_done ff_task_state matches 1 run scoreboard players display name $tt_check_security ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Security","italic":false}]
execute if score $check_security_done ff_task_state matches 1 run scoreboard players display name $tt_check_security ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Security","color":"gray","italic":false,"strikethrough":true}]
execute if score $fire_pottery_sel ff_task_state matches 1 run scoreboard players operation $tt_fire_pottery ff_task_tracker = #line_fire_pottery ff_task_state
execute if score $fire_pottery_sel ff_task_state matches 1 unless score $fire_pottery_done ff_task_state matches 1 run scoreboard players display name $tt_fire_pottery ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Fire Pottery","italic":false}]
execute if score $fire_pottery_done ff_task_state matches 1 run scoreboard players display name $tt_fire_pottery ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Fire Pottery","color":"gray","italic":false,"strikethrough":true}]
execute if score $check_ankylo_sel ff_task_state matches 1 run scoreboard players operation $tt_check_ankylo ff_task_tracker = #line_check_ankylo ff_task_state
execute if score $check_ankylo_sel ff_task_state matches 1 unless score $check_ankylo_done ff_task_state matches 1 run scoreboard players display name $tt_check_ankylo ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Ankylo","italic":false}]
execute if score $check_ankylo_done ff_task_state matches 1 run scoreboard players display name $tt_check_ankylo ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Ankylo","color":"gray","italic":false,"strikethrough":true}]
execute if score $climb_the_tower_sel ff_task_state matches 1 run scoreboard players operation $tt_climb_the_tower ff_task_tracker = #line_climb_the_tower ff_task_state
execute if score $climb_the_tower_sel ff_task_state matches 1 unless score $climb_the_tower_done ff_task_state matches 1 run scoreboard players display name $tt_climb_the_tower ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Climb the Tower","italic":false}]
execute if score $climb_the_tower_done ff_task_state matches 1 run scoreboard players display name $tt_climb_the_tower ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Climb the Tower","color":"gray","italic":false,"strikethrough":true}]
execute if score $count_shells_sel ff_task_state matches 1 run scoreboard players operation $tt_count_shells ff_task_tracker = #line_count_shells ff_task_state
execute if score $count_shells_sel ff_task_state matches 1 unless score $count_shells_done ff_task_state matches 1 run scoreboard players display name $tt_count_shells ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Count Shells","italic":false}]
execute if score $count_shells_done ff_task_state matches 1 run scoreboard players display name $tt_count_shells ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Count Shells","color":"gray","italic":false,"strikethrough":true}]
execute if score $count_toes_sel ff_task_state matches 1 run scoreboard players operation $tt_count_toes ff_task_tracker = #line_count_toes ff_task_state
execute if score $count_toes_sel ff_task_state matches 1 unless score $count_toes_done ff_task_state matches 1 run scoreboard players display name $tt_count_toes ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Count Toes","italic":false}]
execute if score $count_toes_done ff_task_state matches 1 run scoreboard players display name $tt_count_toes ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Count Toes","color":"gray","italic":false,"strikethrough":true}]
execute if score $bathroom_leak_sel ff_task_state matches 1 run scoreboard players operation $tt_bathroom_leak ff_task_tracker = #line_bathroom_leak ff_task_state
execute if score $bathroom_leak_sel ff_task_state matches 1 unless score $bathroom_leak_done ff_task_state matches 1 run scoreboard players display name $tt_bathroom_leak ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Bathroom Leak","italic":false}]
execute if score $bathroom_leak_done ff_task_state matches 1 run scoreboard players display name $tt_bathroom_leak ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Bathroom Leak","color":"gray","italic":false,"strikethrough":true}]
execute if score $toilet_clog_sel ff_task_state matches 1 run scoreboard players operation $tt_toilet_clog ff_task_tracker = #line_toilet_clog ff_task_state
execute if score $toilet_clog_sel ff_task_state matches 1 unless score $toilet_clog_done ff_task_state matches 1 run scoreboard players display name $tt_toilet_clog ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Toilet Clog","italic":false}]
execute if score $toilet_clog_done ff_task_state matches 1 run scoreboard players display name $tt_toilet_clog ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Toilet Clog","color":"gray","italic":false,"strikethrough":true}]
execute if score $polish_bell_sel ff_task_state matches 1 run scoreboard players operation $tt_polish_bell ff_task_tracker = #line_polish_bell ff_task_state
execute if score $polish_bell_sel ff_task_state matches 1 unless score $polish_bell_done ff_task_state matches 1 run scoreboard players display name $tt_polish_bell ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Polish Bell","italic":false}]
execute if score $polish_bell_done ff_task_state matches 1 run scoreboard players display name $tt_polish_bell ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Polish Bell","color":"gray","italic":false,"strikethrough":true}]
execute if score $lock_register_sel ff_task_state matches 1 run scoreboard players operation $tt_lock_register ff_task_tracker = #line_lock_register ff_task_state
execute if score $lock_register_sel ff_task_state matches 1 unless score $lock_register_done ff_task_state matches 1 run scoreboard players display name $tt_lock_register ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Lock Register","italic":false}]
execute if score $lock_register_done ff_task_state matches 1 run scoreboard players display name $tt_lock_register ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Lock Register","color":"gray","italic":false,"strikethrough":true}]
execute if score $static_buildup_sel ff_task_state matches 1 run scoreboard players operation $tt_static_buildup ff_task_tracker = #line_static_buildup ff_task_state
execute if score $static_buildup_sel ff_task_state matches 1 unless score $static_buildup_done ff_task_state matches 1 run scoreboard players display name $tt_static_buildup ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Static Buildup","italic":false}]
execute if score $static_buildup_done ff_task_state matches 1 run scoreboard players display name $tt_static_buildup ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Static Buildup","color":"gray","italic":false,"strikethrough":true}]
execute if score $reset_salt_level_sel ff_task_state matches 1 run scoreboard players operation $tt_reset_salt_level ff_task_tracker = #line_reset_salt_level ff_task_state
execute if score $reset_salt_level_sel ff_task_state matches 1 unless score $reset_salt_level_done ff_task_state matches 1 run scoreboard players display name $tt_reset_salt_level ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Reset Salt Level","italic":false}]
execute if score $reset_salt_level_done ff_task_state matches 1 run scoreboard players display name $tt_reset_salt_level ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Reset Salt Level","color":"gray","italic":false,"strikethrough":true}]
execute if score $reset_fountain_sel ff_task_state matches 1 run scoreboard players operation $tt_reset_fountain ff_task_tracker = #line_reset_fountain ff_task_state
execute if score $reset_fountain_sel ff_task_state matches 1 unless score $reset_fountain_done ff_task_state matches 1 run scoreboard players display name $tt_reset_fountain ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Reset Fountain","italic":false}]
execute if score $reset_fountain_done ff_task_state matches 1 run scoreboard players display name $tt_reset_fountain ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Reset Fountain","color":"gray","italic":false,"strikethrough":true}]
execute if score $visit_jurassic_sel ff_task_state matches 1 run scoreboard players operation $tt_visit_jurassic ff_task_tracker = #line_visit_jurassic ff_task_state
execute if score $visit_jurassic_sel ff_task_state matches 1 unless score $visit_jurassic_done ff_task_state matches 1 run scoreboard players display name $tt_visit_jurassic ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Visit Jurassic","italic":false}]
execute if score $visit_jurassic_done ff_task_state matches 1 run scoreboard players display name $tt_visit_jurassic ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Visit Jurassic","color":"gray","italic":false,"strikethrough":true}]
execute if score $visit_neogene_sel ff_task_state matches 1 run scoreboard players operation $tt_visit_neogene ff_task_tracker = #line_visit_neogene ff_task_state
execute if score $visit_neogene_sel ff_task_state matches 1 unless score $visit_neogene_done ff_task_state matches 1 run scoreboard players display name $tt_visit_neogene ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Visit Neogene","italic":false}]
execute if score $visit_neogene_done ff_task_state matches 1 run scoreboard players display name $tt_visit_neogene ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Visit Neogene","color":"gray","italic":false,"strikethrough":true}]
execute if score $visit_silurian_sel ff_task_state matches 1 run scoreboard players operation $tt_visit_silurian ff_task_tracker = #line_visit_silurian ff_task_state
execute if score $visit_silurian_sel ff_task_state matches 1 unless score $visit_silurian_done ff_task_state matches 1 run scoreboard players display name $tt_visit_silurian ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Visit Silurian","italic":false}]
execute if score $visit_silurian_done ff_task_state matches 1 run scoreboard players display name $tt_visit_silurian ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Visit Silurian","color":"gray","italic":false,"strikethrough":true}]
execute if score $visit_archean_sel ff_task_state matches 1 run scoreboard players operation $tt_visit_archean ff_task_tracker = #line_visit_archean ff_task_state
execute if score $visit_archean_sel ff_task_state matches 1 unless score $visit_archean_done ff_task_state matches 1 run scoreboard players display name $tt_visit_archean ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Visit Archean","italic":false}]
execute if score $visit_archean_done ff_task_state matches 1 run scoreboard players display name $tt_visit_archean ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Visit Archean","color":"gray","italic":false,"strikethrough":true}]
execute if score $dive_into_well_sel ff_task_state matches 1 run scoreboard players operation $tt_dive_into_well ff_task_tracker = #line_dive_into_well ff_task_state
execute if score $dive_into_well_sel ff_task_state matches 1 unless score $dive_into_well_done ff_task_state matches 1 run scoreboard players display name $tt_dive_into_well ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Dive into Well","italic":false}]
execute if score $dive_into_well_done ff_task_state matches 1 run scoreboard players display name $tt_dive_into_well ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Dive into Well","color":"gray","italic":false,"strikethrough":true}]
execute if score $swat_flies_sel ff_task_state matches 1 run scoreboard players operation $tt_swat_flies ff_task_tracker = #line_swat_flies ff_task_state
execute if score $swat_flies_sel ff_task_state matches 1 unless score $swat_flies_done ff_task_state matches 1 run scoreboard players display name $tt_swat_flies ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Swat Flies","italic":false}]
execute if score $swat_flies_done ff_task_state matches 1 run scoreboard players display name $tt_swat_flies ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Swat Flies","color":"gray","italic":false,"strikethrough":true}]
execute if score $water_temp_sel ff_task_state matches 1 run scoreboard players operation $tt_water_temp ff_task_tracker = #line_water_temp ff_task_state
execute if score $water_temp_sel ff_task_state matches 1 unless score $water_temp_done ff_task_state matches 1 run scoreboard players display name $tt_water_temp ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Water Temp","italic":false}]
execute if score $water_temp_done ff_task_state matches 1 run scoreboard players display name $tt_water_temp ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Water Temp","color":"gray","italic":false,"strikethrough":true}]
execute if score $fix_cracked_egg_sel ff_task_state matches 1 run scoreboard players operation $tt_fix_cracked_egg ff_task_tracker = #line_fix_cracked_egg ff_task_state
execute if score $fix_cracked_egg_sel ff_task_state matches 1 unless score $fix_cracked_egg_done ff_task_state matches 1 run scoreboard players display name $tt_fix_cracked_egg ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Fix Cracked Egg","italic":false}]
execute if score $fix_cracked_egg_done ff_task_state matches 1 run scoreboard players display name $tt_fix_cracked_egg ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Fix Cracked Egg","color":"gray","italic":false,"strikethrough":true}]
execute if score $tnt_test_sel ff_task_state matches 1 run scoreboard players operation $tt_tnt_test ff_task_tracker = #line_tnt_test ff_task_state
execute if score $tnt_test_sel ff_task_state matches 1 unless score $tnt_test_done ff_task_state matches 1 run scoreboard players display name $tt_tnt_test ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" TNT Test","italic":false}]
execute if score $tnt_test_done ff_task_state matches 1 run scoreboard players display name $tt_tnt_test ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" TNT Test","color":"gray","italic":false,"strikethrough":true}]
execute if score $sweep_popcorn_sel ff_task_state matches 1 run scoreboard players operation $tt_sweep_popcorn ff_task_tracker = #line_sweep_popcorn ff_task_state
execute if score $sweep_popcorn_sel ff_task_state matches 1 unless score $sweep_popcorn_done ff_task_state matches 1 run scoreboard players display name $tt_sweep_popcorn ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Sweep Popcorn","italic":false}]
execute if score $sweep_popcorn_done ff_task_state matches 1 run scoreboard players display name $tt_sweep_popcorn ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Sweep Popcorn","color":"gray","italic":false,"strikethrough":true}]
execute if score $dig_sand_sel ff_task_state matches 1 run scoreboard players operation $tt_dig_sand ff_task_tracker = #line_dig_sand ff_task_state
execute if score $dig_sand_sel ff_task_state matches 1 unless score $dig_sand_done ff_task_state matches 1 run scoreboard players display name $tt_dig_sand ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Dig Sand","italic":false}]
execute if score $dig_sand_done ff_task_state matches 1 run scoreboard players display name $tt_dig_sand ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Dig Sand","color":"gray","italic":false,"strikethrough":true}]

execute if score $chlorinify_sel ff_task_state matches 1 run scoreboard players operation $tt_chlorinify ff_task_tracker = #line_chlorinify ff_task_state
execute if score $chlorinify_sel ff_task_state matches 1 unless score $chlorinify_done ff_task_state matches 1 run scoreboard players display name $tt_chlorinify ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Chlorinify","italic":false}]
execute if score $chlorinify_done ff_task_state matches 1 run scoreboard players display name $tt_chlorinify ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Chlorinify","color":"gray","italic":false,"strikethrough":true}]
execute if score $credit_reel_sel ff_task_state matches 1 run scoreboard players operation $tt_credit_reel ff_task_tracker = #line_credit_reel ff_task_state
execute if score $credit_reel_sel ff_task_state matches 1 unless score $credit_reel_done ff_task_state matches 1 run scoreboard players display name $tt_credit_reel ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Credit Reel","italic":false}]
execute if score $credit_reel_done ff_task_state matches 1 run scoreboard players display name $tt_credit_reel ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Credit Reel","color":"gray","italic":false,"strikethrough":true}]
execute if score $cool_it_sel ff_task_state matches 1 run scoreboard players operation $tt_cool_it ff_task_tracker = #line_cool_it ff_task_state
execute if score $cool_it_sel ff_task_state matches 1 unless score $cool_it_done ff_task_state matches 1 run scoreboard players display name $tt_cool_it ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Cool It","italic":false}]
execute if score $cool_it_done ff_task_state matches 1 run scoreboard players display name $tt_cool_it ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Cool It","color":"gray","italic":false,"strikethrough":true}]
execute if score $heat_it_up_sel ff_task_state matches 1 run scoreboard players operation $tt_heat_it_up ff_task_tracker = #line_heat_it_up ff_task_state
execute if score $heat_it_up_sel ff_task_state matches 1 unless score $heat_it_up_done ff_task_state matches 1 run scoreboard players display name $tt_heat_it_up ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Heat It Up","italic":false}]
execute if score $heat_it_up_done ff_task_state matches 1 run scoreboard players display name $tt_heat_it_up ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Heat It Up","color":"gray","italic":false,"strikethrough":true}]
execute if score $sponge_up_spill_sel ff_task_state matches 1 run scoreboard players operation $tt_sponge_up_spill ff_task_tracker = #line_sponge_up_spill ff_task_state
execute if score $sponge_up_spill_sel ff_task_state matches 1 unless score $sponge_up_spill_done ff_task_state matches 1 run scoreboard players display name $tt_sponge_up_spill ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Sponge Up Spill","italic":false}]
execute if score $sponge_up_spill_done ff_task_state matches 1 run scoreboard players display name $tt_sponge_up_spill ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Sponge Up Spill","color":"gray","italic":false,"strikethrough":true}]
execute if score $feed_the_plants_sel ff_task_state matches 1 run scoreboard players operation $tt_feed_the_plants ff_task_tracker = #line_feed_the_plants ff_task_state
execute if score $feed_the_plants_sel ff_task_state matches 1 unless score $feed_the_plants_done ff_task_state matches 1 run scoreboard players display name $tt_feed_the_plants ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Feed the Plants","italic":false}]
execute if score $feed_the_plants_done ff_task_state matches 1 run scoreboard players display name $tt_feed_the_plants ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Feed the Plants","color":"gray","italic":false,"strikethrough":true}]
execute if score $refill_coffee_sel ff_task_state matches 1 run scoreboard players operation $tt_refill_coffee ff_task_tracker = #line_refill_coffee ff_task_state
execute if score $refill_coffee_sel ff_task_state matches 1 unless score $refill_coffee_done ff_task_state matches 1 run scoreboard players display name $tt_refill_coffee ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Refill Coffee","italic":false}]
execute if score $refill_coffee_done ff_task_state matches 1 run scoreboard players display name $tt_refill_coffee ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Refill Coffee","color":"gray","italic":false,"strikethrough":true}]
execute if score $coffee_refill_sel ff_task_state matches 1 run scoreboard players operation $tt_coffee_refill ff_task_tracker = #line_coffee_refill ff_task_state
execute if score $coffee_refill_sel ff_task_state matches 1 unless score $coffee_refill_done ff_task_state matches 1 run scoreboard players display name $tt_coffee_refill ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Coffee Refill","italic":false}]
execute if score $coffee_refill_done ff_task_state matches 1 run scoreboard players display name $tt_coffee_refill ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Coffee Refill","color":"gray","italic":false,"strikethrough":true}]
execute if score $replenish_soap_sel ff_task_state matches 1 run scoreboard players operation $tt_replenish_soap ff_task_tracker = #line_replenish_soap ff_task_state
execute if score $replenish_soap_sel ff_task_state matches 1 unless score $replenish_soap_done ff_task_state matches 1 run scoreboard players display name $tt_replenish_soap ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Replenish Soap","italic":false}]
execute if score $replenish_soap_done ff_task_state matches 1 run scoreboard players display name $tt_replenish_soap ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Replenish Soap","color":"gray","italic":false,"strikethrough":true}]
execute if score $restock_plushies_sel ff_task_state matches 1 run scoreboard players operation $tt_restock_plushies ff_task_tracker = #line_restock_plushies ff_task_state
execute if score $restock_plushies_sel ff_task_state matches 1 unless score $restock_plushies_done ff_task_state matches 1 run scoreboard players display name $tt_restock_plushies ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Restock Plushies","italic":false}]
execute if score $restock_plushies_done ff_task_state matches 1 run scoreboard players display name $tt_restock_plushies ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Restock Plushies","color":"gray","italic":false,"strikethrough":true}]
execute if score $revitalize_coral_sel ff_task_state matches 1 run scoreboard players operation $tt_revitalize_coral ff_task_tracker = #line_revitalize_coral ff_task_state
execute if score $revitalize_coral_sel ff_task_state matches 1 unless score $revitalize_coral_done ff_task_state matches 1 run scoreboard players display name $tt_revitalize_coral ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Revitalize Coral","italic":false}]
execute if score $revitalize_coral_done ff_task_state matches 1 run scoreboard players display name $tt_revitalize_coral ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Revitalize Coral","color":"gray","italic":false,"strikethrough":true}]
execute if score $shark_bait_sel ff_task_state matches 1 run scoreboard players operation $tt_shark_bait ff_task_tracker = #line_shark_bait ff_task_state
execute if score $shark_bait_sel ff_task_state matches 1 unless score $shark_bait_done ff_task_state matches 1 run scoreboard players display name $tt_shark_bait ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Shark Bait","italic":false}]
execute if score $shark_bait_done ff_task_state matches 1 run scoreboard players display name $tt_shark_bait ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Shark Bait","color":"gray","italic":false,"strikethrough":true}]
execute if score $smelly_toilet_sel ff_task_state matches 1 run scoreboard players operation $tt_smelly_toilet ff_task_tracker = #line_smelly_toilet ff_task_state
execute if score $smelly_toilet_sel ff_task_state matches 1 unless score $smelly_toilet_done ff_task_state matches 1 run scoreboard players display name $tt_smelly_toilet ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Smelly Toilet","italic":false}]
execute if score $smelly_toilet_done ff_task_state matches 1 run scoreboard players display name $tt_smelly_toilet ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Smelly Toilet","color":"gray","italic":false,"strikethrough":true}]
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 run scoreboard players operation $tt_wash_muddy_sherd ff_task_tracker = #line_wash_muddy_sherd ff_task_state
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 unless score $wash_muddy_sherd_done ff_task_state matches 1 run scoreboard players display name $tt_wash_muddy_sherd ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Wash Muddy Sherd","italic":false}]
execute if score $wash_muddy_sherd_done ff_task_state matches 1 run scoreboard players display name $tt_wash_muddy_sherd ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Wash Muddy Sherd","color":"gray","italic":false,"strikethrough":true}]
execute if score $feed_parrot_sel ff_task_state matches 1 run scoreboard players operation $tt_feed_parrot ff_task_tracker = #line_feed_parrot ff_task_state
execute if score $feed_parrot_sel ff_task_state matches 1 unless score $feed_parrot_done ff_task_state matches 1 run scoreboard players display name $tt_feed_parrot ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Feed Parrot","italic":false}]
execute if score $feed_parrot_done ff_task_state matches 1 run scoreboard players display name $tt_feed_parrot ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Feed Parrot","color":"gray","italic":false,"strikethrough":true}]
execute if score $water_crops_sel ff_task_state matches 1 run scoreboard players operation $tt_water_crops ff_task_tracker = #line_water_crops ff_task_state
execute if score $water_crops_sel ff_task_state matches 1 unless score $water_crops_done ff_task_state matches 1 run scoreboard players display name $tt_water_crops ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Water Crops","italic":false}]
execute if score $water_crops_done ff_task_state matches 1 run scoreboard players display name $tt_water_crops ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Water Crops","color":"gray","italic":false,"strikethrough":true}]
execute if score $picnic_with_trike_sel ff_task_state matches 1 run scoreboard players operation $tt_picnic_with_trike ff_task_tracker = #line_picnic_with_trike ff_task_state
execute if score $picnic_with_trike_sel ff_task_state matches 1 unless score $picnic_with_trike_done ff_task_state matches 1 run scoreboard players display name $tt_picnic_with_trike ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Picnic with Trike","italic":false}]
execute if score $picnic_with_trike_done ff_task_state matches 1 run scoreboard players display name $tt_picnic_with_trike ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Picnic with Trike","color":"gray","italic":false,"strikethrough":true}]
execute if score $nautilus_guard_sel ff_task_state matches 1 run scoreboard players operation $tt_nautilus_guard ff_task_tracker = #line_nautilus_guard ff_task_state
execute if score $nautilus_guard_sel ff_task_state matches 1 unless score $nautilus_guard_done ff_task_state matches 1 run scoreboard players display name $tt_nautilus_guard ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Nautilus Guard","italic":false}]
execute if score $nautilus_guard_done ff_task_state matches 1 run scoreboard players display name $tt_nautilus_guard ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Nautilus Guard","color":"gray","italic":false,"strikethrough":true}]
execute if score $feed_the_fish_sel ff_task_state matches 1 run scoreboard players operation $tt_feed_the_fish ff_task_tracker = #line_feed_the_fish ff_task_state
execute if score $feed_the_fish_sel ff_task_state matches 1 unless score $feed_the_fish_done ff_task_state matches 1 run scoreboard players display name $tt_feed_the_fish ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Feed the Fish","italic":false}]
execute if score $feed_the_fish_done ff_task_state matches 1 run scoreboard players display name $tt_feed_the_fish ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Feed the Fish","color":"gray","italic":false,"strikethrough":true}]
execute if score $popcorn_buckets_sel ff_task_state matches 1 run scoreboard players operation $tt_popcorn_buckets ff_task_tracker = #line_popcorn_buckets ff_task_state
execute if score $popcorn_buckets_sel ff_task_state matches 1 unless score $popcorn_buckets_done ff_task_state matches 1 run scoreboard players display name $tt_popcorn_buckets ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Popcorn Buckets","italic":false}]
execute if score $popcorn_buckets_done ff_task_state matches 1 run scoreboard players display name $tt_popcorn_buckets ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Popcorn Buckets","color":"gray","italic":false,"strikethrough":true}]

execute if score $star_gazing_sel ff_task_state matches 1 run scoreboard players operation $tt_star_gazing ff_task_tracker = #line_star_gazing ff_task_state
execute if score $star_gazing_sel ff_task_state matches 1 unless score $star_gazing_done ff_task_state matches 1 run scoreboard players display name $tt_star_gazing ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Star Gazing","italic":false}]
execute if score $star_gazing_done ff_task_state matches 1 run scoreboard players display name $tt_star_gazing ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Star Gazing","color":"gray","italic":false,"strikethrough":true}]
execute if score $glowberry_trees_sel ff_task_state matches 1 run scoreboard players operation $tt_glowberry_trees ff_task_tracker = #line_glowberry_trees ff_task_state
execute if score $glowberry_trees_sel ff_task_state matches 1 unless score $glowberry_trees_done ff_task_state matches 1 run scoreboard players display name $tt_glowberry_trees ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Glowberry Trees","italic":false}]
execute if score $glowberry_trees_done ff_task_state matches 1 run scoreboard players display name $tt_glowberry_trees ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Glowberry Trees","color":"gray","italic":false,"strikethrough":true}]
execute if score $return_the_key_sel ff_task_state matches 1 run scoreboard players operation $tt_return_the_key ff_task_tracker = #line_return_the_key ff_task_state
execute if score $return_the_key_sel ff_task_state matches 1 unless score $return_the_key_done ff_task_state matches 1 run scoreboard players display name $tt_return_the_key ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Return the Key","italic":false}]
execute if score $return_the_key_done ff_task_state matches 1 run scoreboard players display name $tt_return_the_key ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Return the Key","color":"gray","italic":false,"strikethrough":true}]
execute if score $skincare_routine_sel ff_task_state matches 1 run scoreboard players operation $tt_skincare_routine ff_task_tracker = #line_skincare_routine ff_task_state
execute if score $skincare_routine_sel ff_task_state matches 1 unless score $skincare_routine_done ff_task_state matches 1 run scoreboard players display name $tt_skincare_routine ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Skincare Routine","italic":false}]
execute if score $skincare_routine_done ff_task_state matches 1 run scoreboard players display name $tt_skincare_routine ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Skincare Routine","color":"gray","italic":false,"strikethrough":true}]
execute if score $feed_the_bats_sel ff_task_state matches 1 run scoreboard players operation $tt_feed_the_bats ff_task_tracker = #line_feed_the_bats ff_task_state
execute if score $feed_the_bats_sel ff_task_state matches 1 unless score $feed_the_bats_done ff_task_state matches 1 run scoreboard players display name $tt_feed_the_bats ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Feed the Bats","italic":false}]
execute if score $feed_the_bats_done ff_task_state matches 1 run scoreboard players display name $tt_feed_the_bats ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Feed the Bats","color":"gray","italic":false,"strikethrough":true}]
execute if score $a_c_reset_sel ff_task_state matches 1 run scoreboard players operation $tt_a_c_reset ff_task_tracker = #line_a_c_reset ff_task_state
execute if score $a_c_reset_sel ff_task_state matches 1 unless score $a_c_reset_done ff_task_state matches 1 run scoreboard players display name $tt_a_c_reset ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" A/C Reset","italic":false}]
execute if score $a_c_reset_done ff_task_state matches 1 run scoreboard players display name $tt_a_c_reset ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" A/C Reset","color":"gray","italic":false,"strikethrough":true}]
execute if score $deforst_freezer_sel ff_task_state matches 1 run scoreboard players operation $tt_deforst_freezer ff_task_tracker = #line_deforst_freezer ff_task_state
execute if score $deforst_freezer_sel ff_task_state matches 1 unless score $deforst_freezer_done ff_task_state matches 1 run scoreboard players display name $tt_deforst_freezer ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Defrost Freezer","italic":false}]
execute if score $deforst_freezer_done ff_task_state matches 1 run scoreboard players display name $tt_deforst_freezer ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Defrost Freezer","color":"gray","italic":false,"strikethrough":true}]
execute if score $the_lost_code_sel ff_task_state matches 1 run scoreboard players operation $tt_the_lost_code ff_task_tracker = #line_the_lost_code ff_task_state
execute if score $the_lost_code_sel ff_task_state matches 1 unless score $the_lost_code_done ff_task_state matches 1 run scoreboard players display name $tt_the_lost_code ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" The Lost Code","italic":false}]
execute if score $the_lost_code_done ff_task_state matches 1 run scoreboard players display name $tt_the_lost_code ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" The Lost Code","color":"gray","italic":false,"strikethrough":true}]
execute if score $pig_wrangler_sel ff_task_state matches 1 run scoreboard players operation $tt_pig_wrangler ff_task_tracker = #line_pig_wrangler ff_task_state
execute if score $pig_wrangler_sel ff_task_state matches 1 unless score $pig_wrangler_done ff_task_state matches 1 run scoreboard players display name $tt_pig_wrangler ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Pig Wrangler","italic":false}]
execute if score $pig_wrangler_done ff_task_state matches 1 run scoreboard players display name $tt_pig_wrangler ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Pig Wrangler","color":"gray","italic":false,"strikethrough":true}]
execute if score $holy_grail_sel ff_task_state matches 1 run scoreboard players operation $tt_holy_grail ff_task_tracker = #line_holy_grail ff_task_state
execute if score $holy_grail_sel ff_task_state matches 1 unless score $holy_grail_done ff_task_state matches 1 run scoreboard players display name $tt_holy_grail ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Holy Grail","italic":false}]
execute if score $holy_grail_done ff_task_state matches 1 run scoreboard players display name $tt_holy_grail ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Holy Grail","color":"gray","italic":false,"strikethrough":true}]
execute if score $fertilize_plant_sel ff_task_state matches 1 run scoreboard players operation $tt_fertilize_plant ff_task_tracker = #line_fertilize_plant ff_task_state
execute if score $fertilize_plant_sel ff_task_state matches 1 unless score $fertilize_plant_done ff_task_state matches 1 run scoreboard players display name $tt_fertilize_plant ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Fertilize Plant","italic":false}]
execute if score $fertilize_plant_done ff_task_state matches 1 run scoreboard players display name $tt_fertilize_plant ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Fertilize Plant","color":"gray","italic":false,"strikethrough":true}]
execute if score $basketball_dance_sel ff_task_state matches 1 run scoreboard players operation $tt_basketball_dance ff_task_tracker = #line_basketball_dance ff_task_state
execute if score $basketball_dance_sel ff_task_state matches 1 unless score $basketball_dance_done ff_task_state matches 1 run scoreboard players display name $tt_basketball_dance ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Basketball Dance","italic":false}]
execute if score $basketball_dance_done ff_task_state matches 1 run scoreboard players display name $tt_basketball_dance ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Basketball Dance","color":"gray","italic":false,"strikethrough":true}]

execute if score $final_task_sel ff_task_state matches 1 run scoreboard players operation $tt_final_task ff_task_tracker = #line_final_task ff_task_state
execute if score $final_task_sel ff_task_state matches 1 unless score $final_task_done ff_task_state matches 1 run scoreboard players display name $tt_final_task ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_final"},{"text":" Final Task","italic":false}]
execute if score $final_task_done ff_task_state matches 1 run scoreboard players display name $tt_final_task ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_final"},{"text":" Final Task","color":"gray","italic":false,"strikethrough":true}]
