scoreboard objectives add ff_lock_look dummy
scoreboard objectives add ff_scan dummy
scoreboard objectives add ff_key_cooldown dummy
scoreboard objectives add ff_key_cd_cfg dummy
scoreboard objectives add ff_key_bar dummy
scoreboard objectives add ff_key_anim dummy
scoreboard objectives add ff_dna_scan dummy
scoreboard objectives add ff_dna_use minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ff_dna_use_seen dummy
scoreboard objectives add ff_lock_flash dummy
scoreboard objectives add ff_lock_click_ttl dummy
scoreboard objectives add ff_hazard_active dummy
scoreboard objectives add ff_hazard_rng dummy
scoreboard objectives add ff_gate_timer dummy
scoreboard objectives add ff_door_angle dummy
scoreboard objectives add ff_door_target dummy
scoreboard objectives add ff_door_tick dummy
scoreboard objectives add ff_door_delay dummy
scoreboard objectives add ff_game_state dummy
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
scoreboard objectives add ff_queue_order dummy
scoreboard objectives add ff_queue_start trigger
scoreboard objectives add ff_cmd_start trigger
scoreboard objectives add ff_cmd_leave trigger
scoreboard objectives add ff_cmd_spectate trigger
scoreboard objectives add ff_cmd_stats trigger
scoreboard objectives add ff_cmd_invite trigger
scoreboard objectives add ff_cmd_tutorial trigger
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
scoreboard objectives add ff_lb_calc dummy
scoreboard objectives add ff_fade_tp dummy
scoreboard players set #hazard_count ff_hazard_rng 5
scoreboard players set $key ff_key_cd_cfg 600
scoreboard players set #twenty ff_key_cd_cfg 20
scoreboard players set #day_tick ff_day 20
scoreboard players set #day_minute ff_day 1200
scoreboard players set #day_full ff_day 6000
scoreboard players set #day_length ff_day 24000
scoreboard players set #sixty ff_day 60
scoreboard players set #five ff_day 5
scoreboard players set #ten ff_day 10
scoreboard players set #time_step ff_day 120
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
scoreboard players set $time_current ff_day 6000
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
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $run_multiplayer ff_game_state 0
scoreboard players set $run_roster_count ff_game_state 0
scoreboard players set $active_online ff_game_state 0
scoreboard players set $login_is_run_member ff_game_state 0
scoreboard players set $login_was_multiplayer ff_game_state 0
scoreboard players set $invite_pending ff_game_state 0
scoreboard players set $invite_token ff_game_state 0
scoreboard players set $queue_start_token ff_queue_start_token 0
scoreboard players set $queue_notify_lock ff_game_state 0
scoreboard players set $join_pad_mode ff_game_state 0
scoreboard players set $game_start_spawn_mode ff_game_state 0
scoreboard players set $sniffer_fright ff_game_state 0
scoreboard players set $bats_fright ff_game_state 0
scoreboard players set $puffer_fright ff_game_state 0
scoreboard players set $puffer_timer ff_game_state 0
scoreboard players set $defeat_anim ff_game_state 0
scoreboard players set #boss_skin ff_boss_skin 0
scoreboard players set $creeper_fright ff_game_state 0
scoreboard players set $skeleton_fright ff_game_state 0
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
scoreboard players set $lb_pending ff_active_uuid_0 0
scoreboard players set $lb_pending ff_active_uuid_1 0
scoreboard players set $lb_pending ff_active_uuid_2 0
scoreboard players set $lb_pending ff_active_uuid_3 0
scoreboard objectives modify ff_task_tracker numberformat blank
gamerule naturalRegeneration true
team add ff_lock_flash_green
team modify ff_lock_flash_green color green
team add ff_active_gold
team modify ff_active_gold color gold
team add ff_dna_hover_yellow
team modify ff_dna_hover_yellow color yellow
team add ff_dev_mode
team modify ff_dev_mode color green
team add ff_game_start_dummy
team modify ff_game_start_dummy collisionRule never
team add ff_queue_mannequin
team modify ff_queue_mannequin collisionRule never
advancement revoke @a only fossil_frights:lock_click
advancement revoke @a only fossil_frights:multiplayer_click
function fossil_frights:game/load
function fossil_frights:command/info_board/setup
function fossil_frights:parkour/load
function fossil_frights:temple_run/load
function fossil_frights:ant_fight/load
function fossil_frights:game/worldborder/reset
function fossil_frights:game/time/reset
function fossil_frights:game/timer/setup
function fossil_frights:game/timer/reset
function fossil_frights:tasks/load
function fossil_frights:game/start_room/day_tracker/setup
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/setup
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/setup
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/setup
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/multiplayer/setup
function fossil_frights:game/start_room/settings/setting3/setup
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:animations/anvil/load
function fossil_frights:leaderboards/load
function fossil_frights:reload_reset
