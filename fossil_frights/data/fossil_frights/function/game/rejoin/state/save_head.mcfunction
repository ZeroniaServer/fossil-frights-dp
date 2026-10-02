execute as @a[limit=1,tag=ff_rejoin_source] run function fossil_frights:entity/match/active
item replace entity @e[limit=1,type=minecraft:armor_stand,tag=ff_rejoin_head,predicate=fossil_frights:entity/match/active] armor.head from entity @a[limit=1,tag=ff_rejoin_source] armor.head
