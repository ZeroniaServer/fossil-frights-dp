execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:messages/error/heists_start_round_before_edit_loot
execute unless score $heist_round_active ff_game_state matches 1 run return 0
scoreboard players set $heist_loot_toggle_was_absent ff_heist 0
execute if score $loot_coffee ff_heist_loot_state matches 0 run scoreboard players set $heist_loot_toggle_was_absent ff_heist 1
execute if score $heist_loot_toggle_was_absent ff_heist matches 1 run function fossil_frights:game/heists/loot/select/low/coffee
execute unless score $heist_loot_toggle_was_absent ff_heist matches 1 run function fossil_frights:admin/menu/heists/loot/remove/coffee
function fossil_frights:game/heists/loot/low/sync
function fossil_frights:game/heists/loot/reorder
function fossil_frights:game/heists/loot/render
function fossil_frights:admin/menu/mark_modified
