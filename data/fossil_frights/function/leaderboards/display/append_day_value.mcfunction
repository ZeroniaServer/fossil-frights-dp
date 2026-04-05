data modify storage fossil_frights:leaderboards display_text append value {"text":"   Day ","color":"white"}
$data modify storage fossil_frights:leaderboards display_text append value {"score":{"name":"#lb_slot_$(slot)_day","objective":"ff_lb_calc"},"color":"white"}
$execute if score #lb_slot_$(slot)_day ff_lb_calc matches ..9 run data modify storage fossil_frights:leaderboards display_text append value {"text":"   ","color":"white"}
$execute if score #lb_slot_$(slot)_day ff_lb_calc matches 10.. run data modify storage fossil_frights:leaderboards display_text append value {"text":"  ","color":"white"}
