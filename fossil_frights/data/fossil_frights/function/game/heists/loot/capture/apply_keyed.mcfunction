$execute unless score $(key) ff_heist_loot_state matches 1..2 run return 0
execute if score $timer_frozen ff_day matches 0 if score $heist_stopwatch_active ff_heist matches 1 run function fossil_frights:game/heists/timer/sync
execute if score $timer_frozen ff_day matches 0 unless score $heist_stopwatch_active ff_heist matches 1 run return 0
execute if score $timer_frozen ff_day matches 0 if score $heist_stopwatch_active ff_heist matches 1 if score $heist_timer ff_heist matches ..0 run return run function fossil_frights:game/heists/end/guards_win
execute unless function fossil_frights:game/heists/loot/capture/credit/resolve run return 0
$scoreboard players operation #capture_value ff_heist_loot_value = $(key) ff_heist_loot_value
scoreboard players operation @a[tag=ff_heist_capture_credit_recipient,limit=1] ff_heist_keyed_loot_captured_round += #capture_value ff_heist_loot_value
$function fossil_frights:game/heists/loot/capture/apply_resolved {key:"$(key)"}
