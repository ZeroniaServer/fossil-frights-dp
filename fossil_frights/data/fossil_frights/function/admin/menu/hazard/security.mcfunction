execute unless predicate fossil_frights:game_state/heist_mode_active run tellraw @s {"text":"Security Gates can only be triggered during a Heists game.","color":"red"}
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
function fossil_frights:admin/menu/mark_modified
function fossil_frights:hazard/start/security
