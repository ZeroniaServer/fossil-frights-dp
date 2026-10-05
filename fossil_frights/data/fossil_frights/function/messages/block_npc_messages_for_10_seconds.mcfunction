execute store result score @s ff_cannot_trigger_npc_messages_until_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",200]}
schedule function fossil_frights:messages/clean_up_npc_messages_block 200t append
