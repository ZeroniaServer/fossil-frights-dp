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
scoreboard objectives add ff_leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add ff_leave_game_seen dummy
scoreboard objectives add ff_join_cooldown dummy
scoreboard objectives add ff_queue_order dummy
scoreboard objectives add ff_queue_start trigger
scoreboard objectives add ff_cmd_start trigger
scoreboard objectives add ff_cmd_leave trigger
scoreboard objectives add ff_cmd_spectate trigger
scoreboard objectives add ff_queue_start_token dummy
scoreboard objectives add ff_queue_prompt_time dummy
scoreboard objectives add ff_queue_prompt_display dummy
scoreboard objectives add ff_fright_timer dummy
scoreboard objectives add ff_anvil_time dummy
scoreboard objectives add ff_anvil_result dummy
scoreboard objectives add ff_anvil_hits dummy
scoreboard objectives add ff_credits_time dummy
scoreboard players set #hazard_count ff_hazard_rng 5
scoreboard players set $key ff_key_cd_cfg 600
scoreboard players set #twenty ff_key_cd_cfg 20
scoreboard players set $active_set ff_game_state 0
scoreboard players set $game_running ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $forklift_paid ff_game_state 0
scoreboard players set $crane_wait ff_game_state 0
scoreboard players set $crane_rat_cooldown ff_game_state 0
scoreboard players set $queue_start_token ff_queue_start_token 0
scoreboard players set $queue_notify_lock ff_game_state 0
scoreboard players set $join_pad_mode ff_game_state 0
scoreboard players set $sniffer_fright ff_game_state 0
scoreboard players set $bats_fright ff_game_state 0
scoreboard players set $puffer_fright ff_game_state 0
scoreboard players set $puffer_timer ff_game_state 0
scoreboard players set $creeper_fright ff_game_state 0
scoreboard players set $skeleton_fright ff_game_state 0
gamerule naturalRegeneration false
team add ff_lock_flash_green
team modify ff_lock_flash_green color green
team add ff_active_gold
team modify ff_active_gold color gold
team add ff_dna_hover_yellow
team modify ff_dna_hover_yellow color yellow
team add ff_dev_mode
team modify ff_dev_mode color green
team add ff_queue_mannequin
team modify ff_queue_mannequin collisionRule never
advancement revoke @a only fossil_frights:lock_click
function fossil_frights:game/load
function fossil_frights:animations/anvil/load
function fossil_frights:reload_reset
