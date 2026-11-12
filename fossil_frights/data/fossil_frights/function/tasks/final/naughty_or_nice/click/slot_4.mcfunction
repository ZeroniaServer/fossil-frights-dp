execute unless score #naughty_or_nice_done_4 ff_task_state matches 0 run return 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"coal"}] run return run function fossil_frights:tasks/final/naughty_or_nice/delivery/hand {slot:4,hand:"mainhand",kind:"K"}
execute if items entity @s weapon.mainhand minecraft:coal run return run function fossil_frights:tasks/final/naughty_or_nice/delivery/hand {slot:4,hand:"mainhand",kind:"K"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"coal"}] run return run function fossil_frights:tasks/final/naughty_or_nice/delivery/hand {slot:4,hand:"offhand",kind:"K"}
execute if items entity @s weapon.offhand minecraft:coal run return run function fossil_frights:tasks/final/naughty_or_nice/delivery/hand {slot:4,hand:"offhand",kind:"K"}
