advancement revoke @s only fossil_frights:tasks/hard/return_the_key/return_click
execute unless items entity @s weapon.* *[custom_data~{itemID:"vault_key"}] run return 0
function fossil_frights:tasks/hard/return_the_key/use
function fossil_frights:tasks/hard/return_the_key/complete
