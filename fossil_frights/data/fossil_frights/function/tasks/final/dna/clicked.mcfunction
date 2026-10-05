advancement revoke @s only fossil_frights:tasks/final/dna/click
function fossil_frights:tasks/final/dna/hover_check
execute unless items entity @s weapon.* *[custom_data~{itemID:"microfiber_cloth"}] run return 0
execute if items entity @s weapon.mainhand *[custom_data~{itemID:"microfiber_cloth"}] run swing @s mainhand
execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"microfiber_cloth"}] run swing @s offhand
function fossil_frights:tasks/final/dna/use
