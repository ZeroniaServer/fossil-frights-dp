$particle minecraft:item{item:{id:stone,components:{item_model:"fossil_frights:display/misc/rock"}}} $(location) 0.4 0.1 0.4 0.05 10 force
$execute positioned as @n[sort=random] facing entity @n[sort=random] feet positioned $(location) rotated ~ 0 positioned ^ ^ ^0.2 run function fossil_frights:items/rock/summon_unbreakable {velocity:$(velocity)}
$playsound minecraft:block.deepslate.break block @a $(location) 1 0
