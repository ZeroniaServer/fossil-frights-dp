scoreboard players reset @a ff_queue_order_display
execute as @a[scores={ff_queue_order=1..}] run scoreboard players operation @s ff_queue_order_display = @s ff_queue_order
execute if entity @a[limit=1,scores={ff_queue_order=1..,ff_queue_prompt_time=1..}] as @a[scores={ff_queue_order=1..}] run scoreboard players remove @s ff_queue_order_display 1
execute as @a unless score @s ff_queue_order matches 1.. run scoreboard players display numberformat @s ff_tablist_text
execute as @a[scores={ff_queue_order=1..,ff_queue_prompt_time=1..}] run scoreboard players display numberformat @s ff_tablist_text fixed {color:"gold",font:"fossil-frights:small_caps",translate:"ff.tablist.in_queue.up_next"}
execute as @a[scores={ff_queue_order=1..,ff_queue_prompt_time=1..}] run function fossil_frights:join/queue/update_next_up_mannequin
execute as @a[scores={ff_queue_order=1..,ff_queue_prompt_time=0}] run scoreboard players display numberformat @s ff_tablist_text fixed {color:"yellow",font:"fossil-frights:small_caps",translate:"ff.tablist.in_queue",with:[{score:{name:"@s",objective:"ff_queue_order_display"}}]}
