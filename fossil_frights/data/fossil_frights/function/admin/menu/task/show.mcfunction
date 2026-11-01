execute if predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:admin/menu/plugin/task/show
execute if predicate fossil_frights:world/packs_enabled/plugin run return 0
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
