execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:messages/error/heists_start_round_before_edit_loot
execute unless score $heist_round_active ff_game_state matches 1 run return 0
scoreboard players set $heist_loot_toggle_was_absent ff_heist 0
execute if score $loot_scrap_metal ff_heist_loot_state matches 0 run scoreboard players set $heist_loot_toggle_was_absent ff_heist 1
execute if score $heist_loot_toggle_was_absent ff_heist matches 1 run function fossil_frights:game/heists/loot/select/medium/scrap_metal
execute unless score $heist_loot_toggle_was_absent ff_heist matches 1 run function fossil_frights:admin/menu/heists/loot/remove/scrap_metal
function fossil_frights:game/heists/loot/low/sync
function fossil_frights:game/heists/loot/reorder
function fossil_frights:key/lock/setup
function fossil_frights:game/heists/loot/render
function fossil_frights:admin/menu/mark_modified
