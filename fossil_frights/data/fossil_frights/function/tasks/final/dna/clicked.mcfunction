advancement revoke @s only fossil_frights:dna_click
execute unless items entity @s weapon.mainhand minecraft:amethyst_shard[custom_data~{ff_dna:true}] run return 0
function fossil_frights:tasks/final/dna/use
