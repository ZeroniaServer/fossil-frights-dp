execute store result score #naughty_or_nice_slot_1 ff_task_state run random value 1..9
execute store result score #naughty_or_nice_slot_2 ff_task_state run random value 1..8
execute if score #naughty_or_nice_slot_2 ff_task_state >= #naughty_or_nice_slot_1 ff_task_state run scoreboard players add #naughty_or_nice_slot_2 ff_task_state 1
execute store result score #naughty_or_nice_slot_3 ff_task_state run random value 10..18
execute store result score #naughty_or_nice_slot_4 ff_task_state run random value 10..17
execute if score #naughty_or_nice_slot_4 ff_task_state >= #naughty_or_nice_slot_3 ff_task_state run scoreboard players add #naughty_or_nice_slot_4 ff_task_state 1
execute store result score #naughty_or_nice_naughty ff_task_state run random value 1..4
scoreboard players operation #naughty_or_nice_tmp ff_task_state = #naughty_or_nice_slot_4 ff_task_state
execute if score #naughty_or_nice_naughty ff_task_state matches 1 run scoreboard players operation #naughty_or_nice_slot_4 ff_task_state = #naughty_or_nice_slot_1 ff_task_state
execute if score #naughty_or_nice_naughty ff_task_state matches 1 run scoreboard players operation #naughty_or_nice_slot_1 ff_task_state = #naughty_or_nice_tmp ff_task_state
execute if score #naughty_or_nice_naughty ff_task_state matches 2 run scoreboard players operation #naughty_or_nice_slot_4 ff_task_state = #naughty_or_nice_slot_2 ff_task_state
execute if score #naughty_or_nice_naughty ff_task_state matches 2 run scoreboard players operation #naughty_or_nice_slot_2 ff_task_state = #naughty_or_nice_tmp ff_task_state
execute if score #naughty_or_nice_naughty ff_task_state matches 3 run scoreboard players operation #naughty_or_nice_slot_4 ff_task_state = #naughty_or_nice_slot_3 ff_task_state
execute if score #naughty_or_nice_naughty ff_task_state matches 3 run scoreboard players operation #naughty_or_nice_slot_3 ff_task_state = #naughty_or_nice_tmp ff_task_state
scoreboard players set #naughty_or_nice_done_1 ff_task_state 0
scoreboard players set #naughty_or_nice_done_2 ff_task_state 0
scoreboard players set #naughty_or_nice_done_3 ff_task_state 0
scoreboard players set #naughty_or_nice_done_4 ff_task_state 0
