execute unless score $naughty_or_nice_started ff_task_state matches 0 run return 0
scoreboard players set $naughty_or_nice_started ff_task_state 1
execute positioned -0.25 72.0 12.5 run playsound minecraft:entity.camel.ambient master @a[distance=..24] ~ ~ ~ 1 1
execute positioned -0.25 72.0 12.5 run playsound fossil_frights:task.hohoho master @a[distance=..24] ~ ~ ~ 0.9 1.0
execute store result score #naughty_or_nice_present_1 ff_task_state run random value 1..6
execute store result score #naughty_or_nice_present_2 ff_task_state run random value 1..5
execute if score #naughty_or_nice_present_2 ff_task_state >= #naughty_or_nice_present_1 ff_task_state run scoreboard players add #naughty_or_nice_present_2 ff_task_state 1
scoreboard players operation #naughty_or_nice_present_low ff_task_state = #naughty_or_nice_present_1 ff_task_state
scoreboard players operation #naughty_or_nice_present_high ff_task_state = #naughty_or_nice_present_1 ff_task_state
execute if score #naughty_or_nice_present_2 ff_task_state < #naughty_or_nice_present_low ff_task_state run scoreboard players operation #naughty_or_nice_present_low ff_task_state = #naughty_or_nice_present_2 ff_task_state
execute if score #naughty_or_nice_present_2 ff_task_state > #naughty_or_nice_present_high ff_task_state run scoreboard players operation #naughty_or_nice_present_high ff_task_state = #naughty_or_nice_present_2 ff_task_state
execute store result score #naughty_or_nice_present_3 ff_task_state run random value 1..4
execute if score #naughty_or_nice_present_3 ff_task_state >= #naughty_or_nice_present_low ff_task_state run scoreboard players add #naughty_or_nice_present_3 ff_task_state 1
execute if score #naughty_or_nice_present_3 ff_task_state >= #naughty_or_nice_present_high ff_task_state run scoreboard players add #naughty_or_nice_present_3 ff_task_state 1
function fossil_frights:frightmas/santasaurus/throw
schedule function fossil_frights:tasks/final/naughty_or_nice/office/toss_presents 25t replace
