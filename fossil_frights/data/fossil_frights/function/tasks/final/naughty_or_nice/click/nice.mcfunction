$execute unless score #naughty_or_nice_done_$(slot) ff_task_state matches 0 run return 0
$execute if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"naughty_or_nice_present"}] run return run function fossil_frights:tasks/final/naughty_or_nice/delivery/hand {slot:$(slot),hand:"mainhand",kind:"P"}
$execute if items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"naughty_or_nice_present"}] run return run function fossil_frights:tasks/final/naughty_or_nice/delivery/hand {slot:$(slot),hand:"offhand",kind:"P"}
