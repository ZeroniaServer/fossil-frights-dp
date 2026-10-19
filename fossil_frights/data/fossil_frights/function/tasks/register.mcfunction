$data modify storage fossil_frights:tasks tasks append value {id:"$(id)",difficulty:"$(difficulty)",has_custom_icon:$(custom_icon)b,icon:{text:"",extra:[{color:"white",sprite:"fossil_frights:items/frights/task_books/$(difficulty)"}]}}
$execute if predicate {type:"int_value_check",value:$(custom_icon),test:1} run data modify storage fossil_frights:tasks tasks[-1].icon.extra[0].sprite set value "fossil_frights:items/frights/task_books/custom/$(id)"

$scoreboard players set $$(id)_sel ff_task_state 0
$scoreboard players set $$(id)_done ff_task_state 0
$scoreboard players set #line_$(id) ff_task_state $(sidebar_index)

$scoreboard players add #$(difficulty)_pool_count ff_task_state 1
