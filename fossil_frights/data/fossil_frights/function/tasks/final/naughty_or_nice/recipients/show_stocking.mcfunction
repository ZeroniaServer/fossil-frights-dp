data merge entity @s {view_range:2f}
tag @s add ff_naughty_or_nice_stocking
$summon minecraft:interaction ~ ~ ~ {width:1f,height:2f,response:true,Tags:["ff_naughty_or_nice_click","ff_naughty_or_nice_slot_$(slot)"]}
