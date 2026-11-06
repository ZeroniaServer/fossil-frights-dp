$execute as @a if items entity @s contents *[custom_data~{guard_key_id:$(id)}] run scoreboard players set #heist_key_still_in_play ff_dummy 1
