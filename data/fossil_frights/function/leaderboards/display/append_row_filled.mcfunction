$data modify storage fossil_frights:leaderboards display_text append value {"text":"$(label)","color":"#F6E7B0"}
$execute if score #lb_slot_$(slot)_kind ff_lb_calc matches 1 run function fossil_frights:leaderboards/display/append_time_value with storage fossil_frights:leaderboards slot_$(slot)
$execute if score #lb_slot_$(slot)_kind ff_lb_calc matches 2 run function fossil_frights:leaderboards/display/append_day_value with storage fossil_frights:leaderboards slot_$(slot)
data modify storage fossil_frights:leaderboards display_text append value {"text":"   ","color":"white"}
$data modify storage fossil_frights:leaderboards display_text append value {"text":"$(name)","color":"$(color)"}
data modify storage fossil_frights:leaderboards display_text append value {"text":" ","color":"white"}
data modify storage fossil_frights:leaderboards display_text append value {"text":"\n","color":"white"}
