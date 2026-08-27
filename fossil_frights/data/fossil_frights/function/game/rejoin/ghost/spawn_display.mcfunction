summon minecraft:text_display ~ ~2.4 ~ {Tags:["ff_rejoin_display","ff_rejoin_display_new"],billboard:"center",see_through:true,background:0,text:{"translate":"ff.rejoin.countdown","font":"fossil-frights:small_caps","color":"gray","with":[{"text":"2:00","font":"fossil-frights:small_numbers_high"}]}}
scoreboard players operation @e[type=minecraft:text_display,tag=ff_rejoin_display_new,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:text_display,tag=ff_rejoin_display_new,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:text_display,tag=ff_rejoin_display_new,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:text_display,tag=ff_rejoin_display_new,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
tag @e[type=minecraft:text_display,tag=ff_rejoin_display_new,limit=1] remove ff_rejoin_display_new
