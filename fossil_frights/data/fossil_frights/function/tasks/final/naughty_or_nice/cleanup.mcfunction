kill @e[type=minecraft:interaction,tag=ff_naughty_or_nice_click]
schedule clear fossil_frights:tasks/final/naughty_or_nice/office/toss_presents
scoreboard players set $naughty_or_nice_toss_pending ff_task_state 0
tag @a[tag=ff_naughty_or_nice_in_office] remove ff_naughty_or_nice_in_office
schedule clear fossil_frights:frightmas/santasaurus/return_to_ambient
execute if score $game_running ff_game_state matches 1 as @e[type=minecraft:item_display,tag=aj.my_blueprint.root,tag=aj.my_blueprint.animation.throw.playing] run function aj:my_blueprint/animations/ambient/play_exclusive
clear @a *[minecraft:custom_data~{itemID:"naughty_or_nice_present"}]
kill @e[type=minecraft:item,predicate=fossil_frights:entity/contents/naughty_or_nice_present]
