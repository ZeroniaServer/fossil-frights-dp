loot replace block 0 0 0 container.0 1 loot fossil_frights:game/heists/invisimask/enum_from_game_pool
execute store result score @s ff_invisimask_variant if items block 0 0 0 container.0 *

execute if score @s ff_invisimask_variant matches 0 run function fossil_frights:join/thief/reset_invisimask_pool
execute if score @s ff_invisimask_variant matches 0 run loot replace block 0 0 0 container.0 1 loot fossil_frights:game/heists/invisimask/enum_from_game_pool
execute if score @s ff_invisimask_variant matches 0 run execute store result score @s ff_invisimask_variant if items block 0 0 0 container.0 *

execute if score @s ff_invisimask_variant matches 1 run scoreboard players set #blaze ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 2 run scoreboard players set #breeze ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 3 run scoreboard players set #creeper ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 4 run scoreboard players set #enderman ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 5 run scoreboard players set #guardian ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 6 run scoreboard players set #piglin ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 7 run scoreboard players set #skeleton ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 8 run scoreboard players set #slime ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 9 run scoreboard players set #spider ff_invisimask_variant 0
execute if score @s ff_invisimask_variant matches 10 run scoreboard players set #zombie ff_invisimask_variant 0
