data modify storage fossil_frights:leaderboards display_text append value {"text":"   ","color":"white"}
$data modify storage fossil_frights:leaderboards display_text append value {"score":{"name":"#lb_slot_$(slot)_min_tens","objective":"ff_lb_calc"},"color":"yellow"}
$data modify storage fossil_frights:leaderboards display_text append value {"score":{"name":"#lb_slot_$(slot)_min_ones","objective":"ff_lb_calc"},"color":"yellow"}
data modify storage fossil_frights:leaderboards display_text append value {"text":":","color":"yellow"}
$data modify storage fossil_frights:leaderboards display_text append value {"score":{"name":"#lb_slot_$(slot)_sec_tens","objective":"ff_lb_calc"},"color":"yellow"}
$data modify storage fossil_frights:leaderboards display_text append value {"score":{"name":"#lb_slot_$(slot)_sec_ones","objective":"ff_lb_calc"},"color":"yellow"}
data modify storage fossil_frights:leaderboards display_text append value {"text":".","color":"yellow"}
$data modify storage fossil_frights:leaderboards display_text append value {"score":{"name":"#lb_slot_$(slot)_centi_tens","objective":"ff_lb_calc"},"color":"yellow"}
$data modify storage fossil_frights:leaderboards display_text append value {"score":{"name":"#lb_slot_$(slot)_centi_ones","objective":"ff_lb_calc"},"color":"yellow"}
