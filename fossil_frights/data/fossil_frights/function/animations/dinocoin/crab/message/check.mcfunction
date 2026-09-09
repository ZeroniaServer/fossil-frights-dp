execute store result score #gametime ff_cannot_trigger_npc_messages_until_timestamp run time query gametime

execute positioned -7.5 71.0 46.5 as @a[distance=..3,gamemode=!spectator,tag=!ff_was_near_crab] unless score @s ff_cannot_trigger_npc_messages_until_timestamp > #gametime ff_cannot_trigger_npc_messages_until_timestamp run function fossil_frights:animations/dinocoin/crab/message/player_nearby
execute positioned -7.5 71.0 46.5 run tag @a[tag=ff_was_near_crab,distance=10..] remove ff_was_near_crab
