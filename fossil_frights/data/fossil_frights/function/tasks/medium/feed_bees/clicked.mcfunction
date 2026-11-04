advancement revoke @s only fossil_frights:tasks/medium/feed_bees/click
execute unless score $feed_bees_sel ff_task_state matches 1 run return 0
execute unless score $feed_bees_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"cotton_candy_pink"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"cotton_candy_pink"}] run return 0
function fossil_frights:tasks/medium/feed_bees/complete
clear @s *[minecraft:custom_data~{itemID:"cotton_candy_pink"}] 1
