$execute as @a if items entity @s container.* *[custom_data~{guard_key_id:$(id)}] run scoreboard players set #heist_key_still_in_play ff_dummy 1
$execute as @a if items entity @s weapon.* *[custom_data~{guard_key_id:$(id)}] run scoreboard players set #heist_key_still_in_play ff_dummy 1
$execute as @a if items entity @s armor.* *[custom_data~{guard_key_id:$(id)}] run scoreboard players set #heist_key_still_in_play ff_dummy 1
$execute as @a if items entity @s player.crafting.* *[custom_data~{guard_key_id:$(id)}] run scoreboard players set #heist_key_still_in_play ff_dummy 1
$execute as @a if items entity @s player.cursor *[custom_data~{guard_key_id:$(id)}] run scoreboard players set #heist_key_still_in_play ff_dummy 1
$execute as @a if items entity @s enderchest.* *[custom_data~{guard_key_id:$(id)}] run scoreboard players set #heist_key_still_in_play ff_dummy 1
