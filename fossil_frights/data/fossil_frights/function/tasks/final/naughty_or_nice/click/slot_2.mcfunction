execute unless score #naughty_or_nice_done_2 ff_task_state matches 0 run return 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"naughty_or_nice_present"}] run return run function fossil_frights:tasks/final/naughty_or_nice/delivery/hand {slot:2,hand:"mainhand"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"naughty_or_nice_present"}] run return run function fossil_frights:tasks/final/naughty_or_nice/delivery/hand {slot:2,hand:"offhand"}
