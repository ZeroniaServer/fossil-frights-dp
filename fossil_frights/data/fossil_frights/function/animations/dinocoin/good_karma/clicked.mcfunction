advancement revoke @s only fossil_frights:interactions/good_karma_crow
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $settings_mode ff_game_state matches 0 run return 0
execute unless predicate fossil_frights:player/is_playing run return 0
execute if score $good_karma_pending ff_game_state matches 1 run return 0
scoreboard players set #good_karma_coins ff_game_state 0
execute store result score #good_karma_coins ff_game_state if items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}]
execute if score #good_karma_coins ff_game_state matches ..0 if score @s ff_msg_cooldown matches 0 run function fossil_frights:player/actionbar/show/generic/requires_dinocoins.1
execute if score #good_karma_coins ff_game_state matches ..0 if score @s ff_msg_cooldown matches 0 run scoreboard players set @s ff_msg_cooldown 40
execute if score #good_karma_coins ff_game_state matches ..0 run return 0
clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 1
scoreboard players add @s ff_coin_used_run 1
function fossil_frights:run_breakdown/event/add {code:"C",id:"05"}
scoreboard players set $good_karma_pending ff_game_state 1
execute as @e[type=minecraft:item_display,tag=ff_crow] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/crow_with_coin"}}
function fossil_frights:messages/dinocoin/good_karma/thanks
execute positioned 26.2 80 30.8 run playsound fossil_frights:frightmas.crow master @a[distance=..16] ~ ~ ~ 1 1
