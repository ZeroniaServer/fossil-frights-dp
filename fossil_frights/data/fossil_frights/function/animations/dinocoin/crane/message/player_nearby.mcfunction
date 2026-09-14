execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard] run return 0
tag @s add ff_was_near_sculkadillo

function fossil_frights:animations/dinocoin/crane/play/idle

function fossil_frights:messages/dinocoin/crane/prompt
function fossil_frights:messages/block_npc_messages_for_10_seconds
