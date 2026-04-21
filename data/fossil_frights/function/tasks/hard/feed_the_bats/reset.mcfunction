execute as @a[tag=ff_active] run function fossil_frights:tasks/hard/feed_the_bats/clear_timer
clear @a[tag=ff_active] minecraft:spider_eye
kill @e[type=minecraft:item,x=25,y=106,z=87,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:spider_eye",components:{"minecraft:lore":[{text:"",extra:["lady_bug"]}]}}}]
