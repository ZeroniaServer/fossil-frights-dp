execute store result score #gametime ff_cannot_trigger_npc_messages_until_timestamp run time query gametime
execute positioned -25.0 96.0 69.6 as @a[distance=..3,gamemode=!spectator,tag=!ff_was_near_lady_bug_revolutionary] unless score @s ff_cannot_trigger_npc_messages_until_timestamp > #gametime ff_cannot_trigger_npc_messages_until_timestamp run function fossil_frights:animations/lady_bug_revolutionary/player_nearby
execute positioned -25.0 96.0 69.6 run tag @a[tag=ff_was_near_lady_bug_revolutionary,distance=5..] remove ff_was_near_lady_bug_revolutionary
