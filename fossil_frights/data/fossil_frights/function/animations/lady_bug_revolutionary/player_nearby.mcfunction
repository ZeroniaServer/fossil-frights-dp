tag @s add ff_was_near_lady_bug_revolutionary

function fossil_frights:animations/lady_bug_revolutionary/sign/start

tellraw @s ["<",{color:"red",translate:"ff.lady_bug_revolutionary.name"},"> ",{translate:"ff.lady_bug_revolutionary.message"}]
function fossil_frights:messages/block_npc_messages_for_10_seconds
