scoreboard players set $heist_capture_disabled ff_game_state 1
function fossil_frights:game/heists/capture_point/clear
function fossil_frights:messages/heists/guards_win
execute as @a[team=ff_guard] run function fossil_frights:items/other/confetti_cannon/give_remote
function fossil_frights:game/heists/victory/guards
function fossil_frights:game/heists/end/post_game_stats
execute as @a[team=ff_guard] run function fossil_frights:messages/heists/victory_leave_winner
execute as @a[team=ff_thief] run function fossil_frights:messages/heists/victory_leave_loser
function fossil_frights:game/heists/end/win_common
