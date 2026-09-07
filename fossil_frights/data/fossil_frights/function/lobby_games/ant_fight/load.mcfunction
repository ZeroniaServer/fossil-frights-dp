scoreboard objectives add ff_ant_fight dummy
scoreboard objectives add ff_ant_leaf_use minecraft.used:minecraft.snowball
scoreboard objectives add ff_ant_leaf_seen dummy
scoreboard objectives add ff_ant_score dummy
scoreboard objectives add ff_ant_score_below_name dummy
scoreboard objectives modify ff_ant_score_below_name displayname ""
scoreboard objectives setdisplay below_name ff_ant_score_below_name
scoreboard objectives add ff_ant_top_score dummy
scoreboard objectives add ff_ant_immunity dummy
scoreboard objectives add ff_ant_sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add ff_ant_sneak_seen dummy
scoreboard objectives add ff_ant_sneak_ticks dummy
scoreboard objectives add ff_ant_unsneak_ticks dummy
scoreboard objectives add ff_ant_blind_ticks dummy
scoreboard objectives add ff_ant_display dummy
scoreboard objectives add ff_ant_combo dummy
scoreboard objectives add ff_ant_combo_shown_until_timestamp dummy
scoreboard players add $ant_best_exists ff_ant_display 0
scoreboard players add $ant_best_score ff_ant_display 0
scoreboard players set $ant_display_ready ff_ant_display 0
function fossil_frights:lobby_games/ant_fight/teleporter_setup
