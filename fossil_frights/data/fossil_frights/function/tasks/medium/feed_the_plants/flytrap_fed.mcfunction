function fossil_frights:animations/tasks/medium/feed_the_plants/flytrap/rig/animations/eat/play_exclusive
tag @s add ff_feed_the_plants_flytrap_chewing
tag @s add ff_feed_the_plants_flytrap_stick_pending
schedule function fossil_frights:tasks/medium/feed_the_plants/flytrap_chew 10t replace
schedule function fossil_frights:tasks/medium/feed_the_plants/flytrap_finish 56t replace
