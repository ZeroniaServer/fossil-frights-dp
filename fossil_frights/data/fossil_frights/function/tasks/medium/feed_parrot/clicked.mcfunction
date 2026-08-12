advancement revoke @s only fossil_frights:tasks/medium/feed_parrot/click
execute unless score $feed_parrot_sel ff_task_state matches 1 run return 0
execute unless score $feed_parrot_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"fish_food"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"fish_food"}] run return 0
function fossil_frights:tasks/medium/feed_parrot/complete
clear @s *[minecraft:custom_data~{itemID:"fish_food"}] 1
