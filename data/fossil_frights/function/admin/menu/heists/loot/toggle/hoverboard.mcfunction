execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:messages/error/heists_start_round_before_edit_loot
execute unless score $heist_round_active ff_game_state matches 1 run return 0
scoreboard players set $heist_loot_toggle_was_absent ff_heist 0
execute if score $loot_hoverboard ff_heist_loot_state matches 0 run scoreboard players set $heist_loot_toggle_was_absent ff_heist 1
execute if score $heist_loot_toggle_was_absent ff_heist matches 1 run function fossil_frights:game/heists/loot/select/high/hoverboard
execute unless score $heist_loot_toggle_was_absent ff_heist matches 1 run function fossil_frights:admin/menu/heists/loot/remove/hoverboard
function fossil_frights:game/heists/loot/low/sync
function fossil_frights:game/heists/loot/reorder
function fossil_frights:game/heists/loot/render
function fossil_frights:admin/menu/mark_modified
