function fossil_frights:messages/heists/thieves_win
execute as @a[team=ff_thief] run function fossil_frights:items/other/confetti_cannon/give_remote
function fossil_frights:game/heists/victory/thieves
execute as @a[team=ff_thief] run function fossil_frights:messages/heists/victory_leave_winner
execute as @a[team=ff_guard] run function fossil_frights:messages/heists/victory_leave_loser
function fossil_frights:game/heists/win_common
