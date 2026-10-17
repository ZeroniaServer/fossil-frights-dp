stopsound @a record fossil_frights:heists.music
function fossil_frights:messages/heists/thieves_win
execute as @a[predicate=fossil_frights:player/team/thief] run function fossil_frights:items/confetti_cannon/give_remote
function fossil_frights:game/heists/victory/thieves
function fossil_frights:game/heists/end/post_game_stats
execute as @a[predicate=fossil_frights:player/team/thief] run function fossil_frights:messages/heists/victory_leave_winner
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:messages/heists/victory_leave_loser
function fossil_frights:game/heists/end/win_common
