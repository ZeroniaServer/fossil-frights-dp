execute unless score $timer_frozen ff_day matches 1 run function fossil_frights:items/heists/trap/state_tick
function fossil_frights:items/heists/trap/common/floor_finder_watchdog
execute if score @s ff_trap_input_delay matches 1.. run scoreboard players remove @s ff_trap_input_delay 1
execute if score @s ff_trap_warn matches 1.. run scoreboard players remove @s ff_trap_warn 1
execute if score @s ff_trap_invalid matches 1.. run scoreboard players remove @s ff_trap_invalid 1
execute if score @s ff_trap_invalid matches ..0 run tag @s remove ff_trap_basement_limit
execute if score @s ff_trap_pickup_feedback matches 1.. run scoreboard players remove @s ff_trap_pickup_feedback 1
execute if score @s ff_trap_no_pickup_feedback matches 1.. run scoreboard players remove @s ff_trap_no_pickup_feedback 1
execute if score @s ff_trap_input_delay matches ..0 if entity @s[tag=ff_trap_cycle_request] run function fossil_frights:items/heists/trap/switch_next
execute if score @s ff_trap_input_delay matches ..0 if entity @s[tag=ff_trap_cycle_request] run function fossil_frights:items/heists/trap/restore_selected_mainhand
execute if score @s ff_trap_input_delay matches ..0 run tag @s remove ff_trap_cycle_request
execute if score @s ff_trap_input_delay matches ..0 if entity @s[tag=ff_trap_place_request] run function fossil_frights:items/heists/trap/handle_place_input
execute if score @s ff_trap_input_delay matches ..0 run tag @s remove ff_trap_place_request
execute if entity @s[tag=ff_trap_restore_pending] run function fossil_frights:items/heists/trap/restore_selected_mainhand
tag @s remove ff_trap_restore_pending
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] run function fossil_frights:items/heists/trap/refresh_selected_mainhand
execute if score @s ff_trap_no_pickup_feedback matches 1.. run title @s actionbar {"translate":"ff.actionbar.trap.no_trap_to_pickup","color":"red","italic":false}
execute if score @s ff_trap_pickup_feedback matches 1.. if score @s ff_trap_selected matches ..0 run title @s actionbar {"translate":"ff.actionbar.trap.picked_up","color":"#FFDE24","italic":false}
execute if score @s ff_trap_pickup_feedback matches 1.. if score @s ff_trap_selected matches 1 run title @s actionbar {"translate":"ff.actionbar.trap.picked_up","color":"#7ED4FF","italic":false}
execute if score @s ff_trap_pickup_feedback matches 1.. if score @s ff_trap_selected matches 2 run title @s actionbar {"translate":"ff.actionbar.trap.picked_up","color":"#421DD0","italic":false}
execute if score @s ff_trap_pickup_feedback matches 1.. if score @s ff_trap_selected matches 3 run title @s actionbar {"translate":"ff.actionbar.trap.picked_up","color":"#F43CA1","italic":false}
execute if score @s ff_trap_pickup_feedback matches 1.. if score @s ff_trap_selected matches 4.. run title @s actionbar {"translate":"ff.actionbar.trap.picked_up","color":"#FB3823","italic":false}
execute if score @s ff_trap_no_pickup_feedback matches 1.. unless score @s ff_trap_pickup_feedback matches 1.. if items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] run return 0
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] if score @s ff_trap_warn matches 1.. unless score @s ff_trap_invalid matches 1.. run title @s actionbar {"translate":"ff.actionbar.trap.too_close","color":"red","italic":false}
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] if score @s ff_trap_invalid matches 1.. if entity @s[tag=ff_trap_basement_limit] run title @s actionbar {"translate":"ff.actionbar.trap.too_many_basement","color":"red","italic":false}
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] if score @s ff_trap_invalid matches 1.. unless entity @s[tag=ff_trap_basement_limit] run title @s actionbar {"translate":"ff.actionbar.trap.invalid_block","color":"red","italic":false}
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] unless score @s ff_trap_warn matches 1.. unless score @s ff_trap_invalid matches 1.. unless score @s ff_trap_pickup_feedback matches 1.. unless score @s ff_trap_no_pickup_feedback matches 1.. run function fossil_frights:items/heists/trap/ui/show
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] run tag @s add ff_trap_ui_active
execute unless items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] if entity @s[tag=ff_trap_ui_active] run title @s actionbar ""
execute unless items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] run tag @s remove ff_trap_ui_active
