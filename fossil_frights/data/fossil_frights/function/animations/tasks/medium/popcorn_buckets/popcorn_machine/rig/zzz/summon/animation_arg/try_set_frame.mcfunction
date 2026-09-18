tag @s add aj.transforms_only
$execute store success score #success aj.i run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/$(animation)/zzz/set_frame with storage fossil_frights:vending_machine_aj_temp args
tag @s remove aj.transforms_only
execute if score #success aj.i matches 1 run return 1
return fail