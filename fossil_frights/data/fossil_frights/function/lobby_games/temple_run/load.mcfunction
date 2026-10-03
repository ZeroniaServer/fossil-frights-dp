scoreboard objectives add ff_temple_run_time dummy
scoreboard objectives add ff_temple_run_best dummy
scoreboard objectives add ff_temple_run_running dummy
scoreboard players set @a ff_temple_run_running 0
scoreboard objectives add ff_temple_run_start_plate dummy
scoreboard objectives remove ff_temple_run_restart_use
scoreboard objectives add ff_temple_run_restart_use dummy
scoreboard objectives add ff_temple_run_restart_seen dummy
scoreboard objectives add ff_temple_run_min dummy
scoreboard objectives add ff_temple_run_sec dummy
scoreboard objectives add ff_temple_run_sec_tens dummy
scoreboard objectives add ff_temple_run_sec_ones dummy
scoreboard objectives add ff_temple_run_centi dummy
scoreboard objectives add ff_temple_run_centi_tens dummy
scoreboard objectives add ff_temple_run_centi_ones dummy
scoreboard objectives add ff_temple_run_display dummy
scoreboard objectives add ff_temple_run_math dummy
scoreboard objectives add ff_temple_run_anim dummy
scoreboard players set $temple_run_animation_active ff_temple_run_anim 0
scoreboard players set $temple_run_animation_present ff_temple_run_anim 0
scoreboard players set $darts2_active ff_temple_run_anim 0
scoreboard players set #darts2_phase ff_temple_run_anim 0
scoreboard players set #10 ff_temple_run_math 10
scoreboard players set #60 ff_temple_run_math 60
scoreboard players set #100 ff_temple_run_math 100
scoreboard players set #30 ff_temple_run_math 30
scoreboard players set #50 ff_temple_run_math 50
scoreboard players set #40 ff_temple_run_math 40
scoreboard players set #160 ff_temple_run_math 160
scoreboard players set #2 ff_temple_run_math 2
scoreboard players set $spear_trap_trigger_active ff_temple_run_anim 0
scoreboard players set $spear_trap_trigger_cooldown ff_temple_run_anim 0
scoreboard players set #spear_trap_trigger_phase ff_temple_run_anim 0
scoreboard players add $temple_run_best_exists ff_temple_run_display 0
scoreboard players add $temple_run_best_time ff_temple_run_display 0
scoreboard players add $temple_run_best_min ff_temple_run_display 0
scoreboard players add $temple_run_best_sec ff_temple_run_display 0
scoreboard players add $temple_run_best_sec_tens ff_temple_run_display 0
scoreboard players add $temple_run_best_sec_ones ff_temple_run_display 0
scoreboard players add $temple_run_best_centi ff_temple_run_display 0
scoreboard players add $temple_run_best_centi_tens ff_temple_run_display 0
scoreboard players add $temple_run_best_centi_ones ff_temple_run_display 0
setblock 91 79 82 minecraft:light_weighted_pressure_plate
setblock 97 80 70 minecraft:light_weighted_pressure_plate
scoreboard players set $temple_run_display_ready ff_temple_run_display 0
function fossil_frights:lobby_games/temple_run/teleporter_setup
function fossil_frights:lobby_games/temple_run/animations/reset
