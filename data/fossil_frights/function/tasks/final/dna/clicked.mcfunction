advancement revoke @s only fossil_frights:dna_click
execute unless data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{ff_dna:1b}}}} run return 0
function fossil_frights:tasks/final/dna/use
