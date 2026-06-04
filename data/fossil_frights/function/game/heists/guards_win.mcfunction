function fossil_frights:messages/heists/guards_win
execute as @a[tag=ff_heist_guard] run function fossil_frights:items/other/confetti_cannon/give_remote
function fossil_frights:game/heists/victory/guards
execute as @a[tag=ff_heist_guard] run function fossil_frights:messages/heists/victory_leave_winner
execute as @a[tag=ff_heist_thief] run function fossil_frights:messages/heists/victory_leave_loser
function fossil_frights:game/heists/win_common
