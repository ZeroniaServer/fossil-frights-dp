# Pick exactly one unique medium task from the remaining unselected pool.
scoreboard players set #task_remaining ff_task_state 0
execute unless score $chlorinify_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $credit_reel_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $cool_it_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $heat_it_up_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $sponge_up_spill_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $feed_the_plants_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $refill_coffee_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $coffee_refill_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $replenish_soap_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $restock_plushies_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $revitalize_coral_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $shark_bait_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $smelly_toilet_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $wash_muddy_sherd_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $feed_parrot_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $water_crops_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $picnic_with_trike_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $nautilus_guard_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $feed_the_fish_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $popcorn_buckets_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $bring_brush_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $brush_delivery_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute if score #task_remaining ff_task_state matches ..0 run return 0

execute if score #task_remaining ff_task_state matches 1 store result score #task_pick ff_task_state run random value 1..1
execute if score #task_remaining ff_task_state matches 2 store result score #task_pick ff_task_state run random value 1..2
execute if score #task_remaining ff_task_state matches 3 store result score #task_pick ff_task_state run random value 1..3
execute if score #task_remaining ff_task_state matches 4 store result score #task_pick ff_task_state run random value 1..4
execute if score #task_remaining ff_task_state matches 5 store result score #task_pick ff_task_state run random value 1..5
execute if score #task_remaining ff_task_state matches 6 store result score #task_pick ff_task_state run random value 1..6
execute if score #task_remaining ff_task_state matches 7 store result score #task_pick ff_task_state run random value 1..7
execute if score #task_remaining ff_task_state matches 8 store result score #task_pick ff_task_state run random value 1..8
execute if score #task_remaining ff_task_state matches 9 store result score #task_pick ff_task_state run random value 1..9
execute if score #task_remaining ff_task_state matches 10 store result score #task_pick ff_task_state run random value 1..10
execute if score #task_remaining ff_task_state matches 11 store result score #task_pick ff_task_state run random value 1..11
execute if score #task_remaining ff_task_state matches 12 store result score #task_pick ff_task_state run random value 1..12
execute if score #task_remaining ff_task_state matches 13 store result score #task_pick ff_task_state run random value 1..13
execute if score #task_remaining ff_task_state matches 14 store result score #task_pick ff_task_state run random value 1..14
execute if score #task_remaining ff_task_state matches 15 store result score #task_pick ff_task_state run random value 1..15
execute if score #task_remaining ff_task_state matches 16 store result score #task_pick ff_task_state run random value 1..16
execute if score #task_remaining ff_task_state matches 17 store result score #task_pick ff_task_state run random value 1..17
execute if score #task_remaining ff_task_state matches 18 store result score #task_pick ff_task_state run random value 1..18
execute if score #task_remaining ff_task_state matches 19 store result score #task_pick ff_task_state run random value 1..19
execute if score #task_remaining ff_task_state matches 20 store result score #task_pick ff_task_state run random value 1..20
execute if score #task_remaining ff_task_state matches 21 store result score #task_pick ff_task_state run random value 1..21
execute if score #task_remaining ff_task_state matches 22 store result score #task_pick ff_task_state run random value 1..22

scoreboard players set #task_cursor ff_task_state 0
scoreboard players set #task_done ff_task_state 0

execute unless score $chlorinify_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $chlorinify_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/chlorinify/selected
execute unless score $chlorinify_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $credit_reel_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $credit_reel_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/credit_reel/selected
execute unless score $credit_reel_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $cool_it_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $cool_it_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/cool_it/selected
execute unless score $cool_it_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $heat_it_up_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $heat_it_up_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/heat_it_up/selected
execute unless score $heat_it_up_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $sponge_up_spill_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $sponge_up_spill_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/sponge_up_spill/selected
execute unless score $sponge_up_spill_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $feed_the_plants_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $feed_the_plants_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/feed_the_plants/selected
execute unless score $feed_the_plants_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $refill_coffee_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $refill_coffee_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/refill_coffee/selected
execute unless score $refill_coffee_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $coffee_refill_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $coffee_refill_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/coffee_refill/selected
execute unless score $coffee_refill_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $replenish_soap_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $replenish_soap_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/replenish_soap/selected
execute unless score $replenish_soap_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $restock_plushies_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $restock_plushies_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/restock_plushies/selected
execute unless score $restock_plushies_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $revitalize_coral_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $revitalize_coral_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/revitalize_coral/selected
execute unless score $revitalize_coral_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $shark_bait_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $shark_bait_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/shark_bait/selected
execute unless score $shark_bait_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $smelly_toilet_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $smelly_toilet_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/smelly_toilet/selected
execute unless score $smelly_toilet_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $wash_muddy_sherd_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $wash_muddy_sherd_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/wash_muddy_sherd/selected
execute unless score $wash_muddy_sherd_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $feed_parrot_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $feed_parrot_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/feed_parrot/selected
execute unless score $feed_parrot_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $water_crops_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $water_crops_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/water_crops/selected
execute unless score $water_crops_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $picnic_with_trike_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $picnic_with_trike_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/picnic_with_trike/selected
execute unless score $picnic_with_trike_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $nautilus_guard_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $nautilus_guard_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/nautilus_guard/selected
execute unless score $nautilus_guard_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $feed_the_fish_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $feed_the_fish_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/feed_the_fish/selected
execute unless score $feed_the_fish_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $popcorn_buckets_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $popcorn_buckets_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/popcorn_buckets/selected
execute unless score $popcorn_buckets_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $bring_brush_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $bring_brush_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/bring_brush/selected
execute unless score $bring_brush_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $brush_delivery_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $brush_delivery_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/medium/brush_delivery/selected
execute unless score $brush_delivery_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
