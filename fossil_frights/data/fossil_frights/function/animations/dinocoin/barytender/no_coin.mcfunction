execute unless predicate fossil_frights:game_state/heist_mode_active unless score @s ff_cannot_trigger_npc_messages_until_timestamp > #gametime ff_global run function fossil_frights:animations/dinocoin/barytender/message/no_coin
execute if score @s ff_msg_cooldown matches 0 run function fossil_frights:player/actionbar/show/generic/requires_dinocoins.1
execute if score @s ff_msg_cooldown matches 0 run scoreboard players set @s ff_msg_cooldown 40
