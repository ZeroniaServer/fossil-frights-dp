execute store result score @s ff_cannot_trigger_npc_messages_until_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",200]}
schedule function fossil_frights:messages/block_npc_messages_for_10_seconds/clean_up 200t append
