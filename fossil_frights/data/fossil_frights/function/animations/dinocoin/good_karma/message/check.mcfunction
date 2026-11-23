execute positioned 26.2 84 30.8 as @a[distance=..4,gamemode=!spectator,tag=!ff_was_near_crow] unless score @s ff_cannot_trigger_npc_messages_until_timestamp > #gametime ff_global run function fossil_frights:animations/dinocoin/good_karma/message/player_nearby
execute positioned 26.2 84 30.8 run tag @a[tag=ff_was_near_crow,distance=10..] remove ff_was_near_crow
