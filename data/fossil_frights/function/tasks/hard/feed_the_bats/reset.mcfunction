execute as @a[tag=ff_active] run function fossil_frights:tasks/hard/feed_the_bats/clear_timer
clear @a[tag=ff_active] *[custom_data~{itemID:"lady_bug"}]
kill @e[type=minecraft:item,x=25,y=106,z=87,dx=0,dy=0,dz=0,predicate=fossil_frights:entity/contents/lady_bug]
