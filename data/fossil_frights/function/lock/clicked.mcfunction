advancement revoke @s only fossil_frights:lock_click
scoreboard players add @s ff_key_cooldown 0
execute unless score @s ff_key_cooldown matches 0 run return 0
execute unless data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick"}} run return 0
title @s actionbar {"text":"Unlocking..."}
function fossil_frights:key/start_cooldown
