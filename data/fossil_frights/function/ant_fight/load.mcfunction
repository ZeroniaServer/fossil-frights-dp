scoreboard objectives add ff_ant_fight dummy
scoreboard objectives add ff_ant_leaf_use minecraft.used:minecraft.snowball
scoreboard objectives add ff_ant_leaf_seen dummy
scoreboard objectives add ff_ant_score dummy
scoreboard objectives add ff_ant_top_score dummy
scoreboard objectives add ff_ant_proj_0 dummy
scoreboard objectives add ff_ant_proj_1 dummy
scoreboard objectives add ff_ant_proj_2 dummy
scoreboard objectives add ff_ant_proj_3 dummy
scoreboard objectives add ff_ant_display dummy
scoreboard players add $ant_best_exists ff_ant_display 0
scoreboard players add $ant_best_score ff_ant_display 0
function fossil_frights:ant_fight/display/rebuild
