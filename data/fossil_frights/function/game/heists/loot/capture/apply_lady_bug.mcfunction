execute unless score $loot_lady_bug ff_heist_loot_state matches 1..2 run return 0
function fossil_frights:game/heists/loot/capture/apply {key:"$loot_lady_bug"}
execute as @a[scores={ff_bat_bug_timer=1..}] run function fossil_frights:tasks/hard/feed_the_bats/clear_timer
