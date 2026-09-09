execute store result score #gametime ff_cannot_trigger_npc_messages_until_timestamp run time query gametime
execute as @a[scores={ff_cannot_trigger_npc_messages_until_timestamp=0..}] unless score @s ff_cannot_trigger_npc_messages_until_timestamp > #gametime ff_cannot_trigger_npc_messages_until_timestamp run scoreboard players reset @s ff_cannot_trigger_npc_messages_until_timestamp
