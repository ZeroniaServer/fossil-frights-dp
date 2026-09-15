advancement revoke @s only fossil_frights:tasks/medium/feed_the_plants/click_east
execute unless score $feed_the_plants_sel ff_task_state matches 1 run return 0
execute unless score $feed_the_plants_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"cotton_candy_pink"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"cotton_candy_pink"}] run return 0
function fossil_frights:tasks/medium/feed_the_plants/complete_east
clear @s *[minecraft:custom_data~{itemID:"cotton_candy_pink"}] 1
