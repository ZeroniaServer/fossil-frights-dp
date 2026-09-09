execute store result score #gametime ff_cannot_trigger_npc_messages_until_timestamp run time query gametime

execute positioned 52 68 60 as @a[distance=..1.5,gamemode=!spectator,tag=!ff_was_near_sculkadillo] unless score @s ff_cannot_trigger_npc_messages_until_timestamp > #gametime ff_cannot_trigger_npc_messages_until_timestamp run function fossil_frights:animations/dinocoin/crane/message/player_nearby
execute positioned 52 68 60 run tag @a[tag=ff_was_near_sculkadillo,distance=10..] remove ff_was_near_sculkadillo
