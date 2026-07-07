execute unless data storage fossil_frights:world settings.realms run data modify storage fossil_frights:world settings.realms set value false
scoreboard objectives add ff_dummy dummy
scoreboard objectives add ff_constant dummy
scoreboard objectives add ff_lock_look dummy
scoreboard objectives add ff_scan dummy
scoreboard objectives add ff_key_cooldown dummy
scoreboard objectives add ff_key_cd_cfg dummy
scoreboard objectives add ff_key_bar dummy
scoreboard objectives add ff_key_anim dummy
scoreboard objectives add ff_crab_timer dummy
scoreboard objectives add ff_bat_bug_timer dummy
scoreboard objectives add ff_bat_bug_bar dummy
scoreboard objectives add ff_bb_disc_use minecraft.used:minecraft.music_disc_creator_music_box
scoreboard objectives add ff_bb_disc_seen dummy
scoreboard objectives add ff_bb_sneak_seen dummy
scoreboard objectives add ff_bb_sneak_state dummy
scoreboard objectives add ff_bb_shift_count dummy
scoreboard objectives add ff_dna_scan dummy
scoreboard objectives add ff_security_camera dummy
scoreboard objectives add ff_security_camera_nav dummy
scoreboard objectives add ff_security_camera_heist dummy
scoreboard objectives add ff_forced_spec_x dummy
scoreboard objectives add ff_forced_spec_y dummy
scoreboard objectives add ff_forced_spec_z dummy
scoreboard objectives add ff_forced_spec_yaw dummy
scoreboard objectives add ff_forced_spec_pitch dummy
scoreboard objectives add ff_lock_click_ttl dummy
scoreboard objectives add ff_hazard_active dummy
scoreboard objectives add ff_hazard_rng dummy
scoreboard objectives add ff_gate_timer dummy
scoreboard objectives add ff_door_angle dummy
scoreboard objectives add ff_door_target dummy
scoreboard objectives add ff_door_tick dummy
scoreboard objectives add ff_door_delay dummy
scoreboard objectives add ff_game_state dummy
scoreboard objectives add ff_map_region dummy
scoreboard objectives add ff_active_uuid_0 dummy
scoreboard objectives add ff_active_uuid_1 dummy
scoreboard objectives add ff_active_uuid_2 dummy
scoreboard objectives add ff_active_uuid_3 dummy
scoreboard objectives add ff_run_order dummy
scoreboard objectives add ff_leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add ff_leave_game_seen dummy
scoreboard objectives add ff_deaths deathCount
scoreboard objectives add ff_deaths_seen dummy
scoreboard objectives add ff_join_cooldown dummy
scoreboard objectives add ff_msg_cooldown dummy
scoreboard objectives add ff_queue_order dummy
scoreboard objectives add ff_queue_start trigger
scoreboard objectives add ff_cmd_start trigger
scoreboard objectives add ff_cmd_leave trigger
scoreboard objectives add ff_cmd_spectate trigger
scoreboard objectives add ff_cmd_stats trigger
scoreboard objectives add ff_cmd_invite trigger
scoreboard objectives add ff_cmd_tutorial trigger
scoreboard objectives add ff_cmd_info trigger
scoreboard objectives add ff_cmd_party trigger
scoreboard objectives add ff_cmd_heists trigger
scoreboard objectives add ff_cmd_join_guard trigger
scoreboard objectives add ff_cmd_join_thief trigger
scoreboard objectives add ff_cmd_spawn trigger
scoreboard objectives add ff_confetti_uses dummy
scoreboard objectives add ff_confetti_age dummy
scoreboard objectives add ff_ice_cannon_age dummy
scoreboard objectives add ff_ice_freeze_age dummy
scoreboard objectives add ff_glowtrap_age dummy
scoreboard objectives add ff_glowtrap_fx dummy
scoreboard objectives add ff_glowtrap_scan dummy
scoreboard objectives add ff_trap_type dummy
scoreboard objectives add ff_trap_selected dummy
scoreboard objectives add ff_trap_input_delay dummy
scoreboard objectives add ff_trap_glow_phase dummy
scoreboard objectives add ff_trap_glow_timer dummy
scoreboard objectives add ff_trap_freeze_phase dummy
scoreboard objectives add ff_trap_freeze_timer dummy
scoreboard objectives add ff_trap_antigravity_phase dummy
scoreboard objectives add ff_trap_antigravity_timer dummy
scoreboard objectives add ff_trap_jelly_phase dummy
scoreboard objectives add ff_trap_jelly_timer dummy
scoreboard objectives add ff_trap_explosive_phase dummy
scoreboard objectives add ff_trap_explosive_timer dummy
scoreboard objectives add ff_double_jump_boost_timer dummy
scoreboard objectives add ff_invite_sel trigger
scoreboard objectives add ff_invite_accept trigger
scoreboard objectives add ff_tutorial dummy
scoreboard objectives add ff_tutorial_scene dummy
scoreboard objectives add ff_tutorial_tick dummy
scoreboard objectives add ff_gui dummy
scoreboard objectives add ff_queue_start_token dummy
scoreboard objectives add ff_queue_prompt_time dummy
scoreboard objectives add ff_queue_prompt_display dummy
scoreboard objectives add ff_fright_timer dummy
scoreboard objectives add ff_anvil_time dummy
scoreboard objectives add ff_anvil_result dummy
scoreboard objectives add ff_anvil_hits dummy
scoreboard objectives add ff_credits_time dummy
scoreboard objectives add ff_boss_skin dummy
scoreboard objectives add ff_day dummy
scoreboard objectives add ff_task_state dummy
scoreboard objectives add ff_task_tracker dummy
scoreboard objectives add ff_top_time dummy
scoreboard objectives add ff_top_day dummy
scoreboard objectives add ff_run_count dummy
scoreboard objectives add ff_duo_best dummy
scoreboard objectives add ff_day1_best dummy
scoreboard objectives add ff_day2_best dummy
scoreboard objectives add ff_day3_best dummy
scoreboard objectives add ff_day4_best dummy
scoreboard objectives add ff_day5_best dummy
scoreboard objectives add ff_day6_best dummy
scoreboard objectives add ff_day7_best dummy
scoreboard objectives add ff_day8_best dummy
scoreboard objectives add ff_day9_best dummy
scoreboard objectives add ff_day10_best dummy
scoreboard objectives add ff_speedrun_delta dummy
scoreboard objectives add ff_speedrun_sign dummy
scoreboard objectives add ff_lb_calc dummy
scoreboard objectives add ff_lb_generation dummy
scoreboard objectives add ff_plugin dummy
scoreboard objectives add ff_fade_tp dummy
scoreboard objectives add ff_heist dummy
scoreboard objectives add ff_heist_sidebar dummy
scoreboard objectives add ff_heist_punch_cd dummy
scoreboard objectives add ff_heist_punch_bar dummy
scoreboard objectives add ff_heist_punch_fx dummy
scoreboard objectives add ff_heist_invis_ticks dummy
scoreboard objectives add ff_heist_stolen_keys dummy
scoreboard objectives add ff_heist_reward dummy
scoreboard objectives add ff_heist_loot_state dummy
scoreboard objectives add ff_heist_loot_value dummy
scoreboard objectives add ff_heist_reveal dummy
scoreboard objectives add ff_heist_flash dummy
scoreboard objectives add ff_button_unpress_timestamp dummy
scoreboard objectives add ff_heist_regen_lock dummy
scoreboard objectives add ff_heist_thaw_fx dummy
scoreboard objectives add ff_heist_paint_fx dummy
scoreboard objectives add ff_dropped_item_despawn_timestamp dummy
scoreboard objectives add ff_task_book_shelf dummy
scoreboard objectives add ff_compass dummy
scoreboard objectives add ff_compass_scan dummy
scoreboard objectives add ff_compass_found dummy
scoreboard objectives add ff_cannot_trigger_lady_bug_revolutionary_until_timestamp dummy
scoreboard players set #1 ff_constant 1
scoreboard players set #5 ff_constant 5
scoreboard players set #10 ff_constant 10
scoreboard players set #20 ff_constant 20
scoreboard players set #ticks_per_second ff_constant 20
scoreboard players set #60 ff_constant 60
scoreboard players set #100 ff_constant 100
scoreboard players set #180 ff_constant 180
scoreboard players set #360 ff_constant 360
scoreboard players set #ticks_per_minute ff_constant 1200
scoreboard players set #daylight_cycle_timeline_length ff_constant 24000
scoreboard players set #hazard_count ff_hazard_rng 5
scoreboard players set $key_cooldown_length ff_key_cd_cfg 600
scoreboard players set $bat_bug_timer_cfg ff_bat_bug_timer 740
scoreboard players set $bat_bug_timer_heist_cfg ff_bat_bug_timer 500
scoreboard players set #day_full ff_day 6000
scoreboard players set #heist_full ff_heist 12000
scoreboard players set #heist_goal ff_heist 1000
scoreboard players set #heist_tick ff_heist 20
scoreboard players set #heist_punch_cooldown ff_heist 400
scoreboard players set #heist_invis_duration ff_heist 160
scoreboard players set #compass_refresh_interval ff_compass 10
scoreboard players operation $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass
scoreboard players set $heist_compass_available ff_compass 0
scoreboard players set $heist_compass_available_prev ff_compass -1
scoreboard players set $heist_compass_available_hash ff_compass 0
scoreboard players set $heist_compass_available_hash_prev ff_compass -1
scoreboard players set $heist_compass_counting ff_compass 0
scoreboard players set $defrost_freezer_compass_stage ff_compass 0
scoreboard players set $heist_regen_lock_timer ff_heist 0
scoreboard players set $heist_wait_ticks ff_heist 0
scoreboard players set $heist_wait_queue_present ff_heist 0
scoreboard players set $heist_flash ff_heist 0
scoreboard players set $heist_sidebar_slot ff_heist 12
scoreboard players set $heist_med_selected ff_heist 0
scoreboard players set $heist_roll ff_heist 0
scoreboard players set $heist_basement_remaining ff_heist 0
scoreboard players set $heist_basement_lava_lock ff_heist 0
scoreboard players set $day_current ff_day 0
scoreboard players set $day_result ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_minutes ff_day 0
scoreboard players set $day_seconds ff_day 0
scoreboard players set $day_seconds_left ff_day 0
scoreboard players set $day_sec_tens ff_day 0
scoreboard players set $day_sec_ones ff_day 0
scoreboard players set $day_tmp ff_day 0
scoreboard players set $day_sound_tmp ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $time_anim_active ff_day 0
scoreboard players set $time_anim_target ff_day 6000
scoreboard players set $time_anim_resume_cycle ff_day 0
scoreboard players set $time_dist ff_day 0
scoreboard players set $timer_ticks ff_day 0
scoreboard players set $timer_started ff_day 0
scoreboard players set $timer_frozen ff_day 0
scoreboard players set $timer_minutes ff_day 0
scoreboard players set $timer_seconds ff_day 0
scoreboard players set $timer_centis ff_day 0
scoreboard players set $timer_min_tens ff_day 0
scoreboard players set $timer_min_ones ff_day 0
scoreboard players set $timer_sec_tens ff_day 0
scoreboard players set $timer_sec_ones ff_day 0
scoreboard players set $timer_centi_tens ff_day 0
scoreboard players set $timer_centi_ones ff_day 0
scoreboard players set $lb_pending_day ff_day 0
scoreboard players set $active_set ff_game_state 0
scoreboard players set $game_running ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $forklift_paid ff_game_state 0
scoreboard players set $crane_wait ff_game_state 0
scoreboard players set $crane_rat_cooldown ff_game_state 0
scoreboard players set $sarcophagus_timer ff_game_state 0
scoreboard players set $sarcophagus_prompt_cooldown ff_game_state 0
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $idle_queue_present ff_game_state 0
scoreboard players set $speedrunner_restart_window ff_game_state 0
scoreboard players set $run_multiplayer ff_game_state 0
scoreboard players set $run_admin_modified ff_game_state 0
scoreboard players set $victory_complete ff_game_state 0
scoreboard players set $party_mode_active ff_game_state 0
scoreboard players set $party_button_lock ff_game_state 0
scoreboard players set $party_button_prev ff_gui 0
scoreboard players set $party_member_count ff_game_state 0
scoreboard players set $heist_mode_active ff_game_state 0
scoreboard players set $heist_round_active ff_game_state 0
scoreboard players set $heist_button_lock ff_game_state 0
scoreboard players set $heist_button_prev ff_gui 0
scoreboard players set $heist_players_ready ff_game_state 0
scoreboard players set $heist_thieves_ready ff_game_state 0
scoreboard players set $heist_ready_click_at ff_button_unpress_timestamp -20
scoreboard players set $heist_ready_click_diff ff_button_unpress_timestamp 0
scoreboard players set $museum_map_claims ff_game_state 0
scoreboard players set $museum_map_flash ff_game_state 0
scoreboard players set $active_online ff_game_state 0
scoreboard players set $login_is_run_member ff_game_state 0
scoreboard players set $login_was_multiplayer ff_game_state 0
scoreboard players set $invite_pending ff_game_state 0
scoreboard players set $invite_token ff_game_state 0
scoreboard players set $queue_start_token ff_queue_start_token 0
scoreboard players set $queue_notify_lock ff_game_state 0
scoreboard players set $join_pad_mode ff_game_state 0
scoreboard players set $game_start_spawn_mode ff_game_state 0
scoreboard players set $lobby_displays_ready ff_game_state 0
scoreboard players set $sniffer_fright ff_game_state 0
scoreboard players set $bats_fright ff_game_state 0
scoreboard players set $puffer_fright ff_game_state 0
scoreboard players set $puffer_timer ff_game_state 0
scoreboard players set $defeat_anim ff_game_state 0
scoreboard players set $defeat_lock ff_game_state 0
scoreboard players set #boss_skin ff_boss_skin 0
scoreboard players set $creeper_fright ff_game_state 0
scoreboard players set $skeleton_fright ff_game_state 0
scoreboard players set $bogged_fright ff_game_state 0
scoreboard players set $stats_top_time ff_lb_calc 0
scoreboard players set $stats_duo_best ff_lb_calc 0
scoreboard players set $stats_duo_minutes ff_lb_calc 0
scoreboard players set $stats_duo_seconds_total ff_lb_calc 0
scoreboard players set $stats_duo_seconds ff_lb_calc 0
scoreboard players set $stats_duo_centis ff_lb_calc 0
scoreboard players set $stats_duo_min_tens ff_lb_calc 0
scoreboard players set $stats_duo_min_ones ff_lb_calc 0
scoreboard players set $stats_duo_sec_tens ff_lb_calc 0
scoreboard players set $stats_duo_sec_ones ff_lb_calc 0
scoreboard players set $stats_duo_centi_tens ff_lb_calc 0
scoreboard players set $stats_duo_centi_ones ff_lb_calc 0
scoreboard players set $stats_minutes ff_lb_calc 0
scoreboard players set $stats_seconds_total ff_lb_calc 0
scoreboard players set $stats_seconds ff_lb_calc 0
scoreboard players set $stats_centis ff_lb_calc 0
scoreboard players set $stats_min_tens ff_lb_calc 0
scoreboard players set $stats_min_ones ff_lb_calc 0
scoreboard players set $stats_sec_tens ff_lb_calc 0
scoreboard players set $stats_sec_ones ff_lb_calc 0
scoreboard players set $stats_centi_tens ff_lb_calc 0
scoreboard players set $stats_centi_ones ff_lb_calc 0
scoreboard players set $speedrun_delta_abs ff_lb_calc 0
scoreboard players set $speedrun_delta_minutes ff_lb_calc 0
scoreboard players set $speedrun_delta_seconds ff_lb_calc 0
scoreboard players set $speedrun_delta_centis ff_lb_calc 0
scoreboard players set $speedrun_delta_min_tens ff_lb_calc 0
scoreboard players set $speedrun_delta_min_ones ff_lb_calc 0
scoreboard players set $speedrun_delta_sec_tens ff_lb_calc 0
scoreboard players set $speedrun_delta_sec_ones ff_lb_calc 0
scoreboard players set $speedrun_delta_centi_tens ff_lb_calc 0
scoreboard players set $speedrun_delta_centi_ones ff_lb_calc 0
scoreboard players set $speedrun_compare ff_lb_calc 0
scoreboard players set $speedrun_sign ff_lb_calc 0
scoreboard players set $lb_pending ff_active_uuid_0 0
scoreboard players set $lb_pending ff_active_uuid_1 0
scoreboard players set $lb_pending ff_active_uuid_2 0
scoreboard players set $lb_pending ff_active_uuid_3 0
scoreboard objectives modify ff_task_tracker numberformat blank
scoreboard objectives modify ff_heist numberformat styled {"color":"gold"}
scoreboard objectives modify ff_heist_sidebar numberformat blank
function fossil_frights:game/apply_gamerules
team add ff_guard
team modify ff_guard color gold
team modify ff_guard friendlyFire false
team modify ff_guard collisionRule never
team add ff_thief
team modify ff_thief color red
team modify ff_thief friendlyFire false
team modify ff_thief nametagVisibility hideForOtherTeams
team modify ff_thief seeFriendlyInvisibles true
team modify ff_thief collisionRule never
team add ff_lobby
team modify ff_lobby friendlyFire false
team modify ff_lobby collisionRule never
team add ff_spectator
team modify ff_spectator color gray
team modify ff_spectator collisionRule never
team add ff_dna_hover_yellow
team modify ff_dna_hover_yellow color yellow
team add ff_dev_mode
team modify ff_dev_mode color green
team add ff_game_start_dummy
team modify ff_game_start_dummy collisionRule never
team add ff_queue_mannequin
team modify ff_queue_mannequin collisionRule never
team add ff_evolution_mannequin
team modify ff_evolution_mannequin collisionRule never
team add ff_security_camera
team modify ff_security_camera collisionRule never
advancement revoke @a only fossil_frights:lock_click
advancement revoke @a only fossil_frights:multiplayer_click
advancement revoke @a only fossil_frights:museum_map_click
advancement revoke @a only fossil_frights:map_region
advancement revoke @a only fossil_frights:info_lectern_click
advancement revoke @a only fossil_frights:temple_run_teleporter_click
advancement revoke @a only fossil_frights:ant_fight_teleporter_click
advancement revoke @a only fossil_frights:swat_flies_click
advancement revoke @a only fossil_frights:check_security_click
advancement revoke @a only fossil_frights:lock_register_click
advancement revoke @a only fossil_frights:polish_bell_click
advancement revoke @a only fossil_frights:fix_cracked_egg_click
advancement revoke @a only fossil_frights:fix_mars_click
advancement revoke @a only fossil_frights:sweep_popcorn_click
advancement revoke @a only fossil_frights:dig_sand_click
advancement revoke @a only fossil_frights:credit_reel_click
advancement revoke @a only fossil_frights:feed_the_fish_click
advancement revoke @a only fossil_frights:popcorn_buckets_click
advancement revoke @a only fossil_frights:ancient_portal_click
advancement revoke @a only fossil_frights:coffee_refill_click
advancement revoke @a only fossil_frights:feed_parrot_click
advancement revoke @a only fossil_frights:feed_the_plants_click
advancement revoke @a only fossil_frights:fix_sculker_click
advancement revoke @a only fossil_frights:refill_coffee_click
advancement revoke @a only fossil_frights:refill_ice_click
advancement revoke @a only fossil_frights:replenish_soap_click
advancement revoke @a only fossil_frights:restock_plushies_click
advancement revoke @a only fossil_frights:revitalize_coral_click
advancement revoke @a only fossil_frights:shark_bait_click
advancement revoke @a only fossil_frights:sponge_up_spill_click
advancement revoke @a only fossil_frights:anvil_click
advancement revoke @a only fossil_frights:crane_payment_click
advancement revoke @a only fossil_frights:sarcophagus_payment_click
advancement revoke @a only fossil_frights:crab_click
advancement revoke @a only fossil_frights:start_room_glass_box_click
advancement revoke @a only fossil_frights:hoveraptor_click
advancement revoke @a only fossil_frights:glowberry_eat
advancement revoke @a only fossil_frights:ice_frozen_hurt
advancement revoke @a only fossil_frights:trap_consumed
advancement revoke @a only fossil_frights:camera_remote_consumed
advancement revoke @a only fossil_frights:heists_night_stick_hit
advancement revoke @a only fossil_frights:hazard_cookie_consumed
advancement revoke @a only fossil_frights:camera_remote_dummy_punch
function fossil_frights:animations/interactions/load
function fossil_frights:key/lock/setup
function fossil_frights:game/start_room/glass_box/setup
function fossil_frights:game/load
function fossil_frights:parkour/load
function fossil_frights:temple_run/load
function fossil_frights:ant_fight/load
function fossil_frights:rollercoaster/load
function fossil_frights:game/worldborder/reset
function fossil_frights:game/time/reset
function fossil_frights:game/timer/reset
function fossil_frights:tasks/load
function fossil_frights:animations/anvil/load
function fossil_frights:leaderboards/load
function fossil_frights:animations/deep_dark_elevator/load
function fossil_frights:game/reload_reset
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run forceload add -112 -96 191 100
execute in minecraft:overworld run forceload add -112 101 191 271
