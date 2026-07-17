function fossil_frights:animations/lady_bug_revolutionary/sign/start
tellraw @s ["<",{color:"red",translate:"ff.lady_bug_revolutionary.name"},"> ",{translate:"ff.lady_bug_revolutionary.message"}]
tag @s add ff_was_near_lady_bug_revolutionary
scoreboard players operation @s ff_cannot_trigger_lady_bug_revolutionary_until_timestamp = #gametime ff_cannot_trigger_lady_bug_revolutionary_until_timestamp
scoreboard players add @s ff_cannot_trigger_lady_bug_revolutionary_until_timestamp 200
