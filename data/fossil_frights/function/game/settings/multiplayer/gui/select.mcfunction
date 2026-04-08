execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run return 0
scoreboard players operation $invite_slot ff_gui = @s ff_invite_sel
scoreboard players remove $invite_slot ff_gui 1
execute store result storage fossil_frights:invite selected_slot int 1 run scoreboard players get $invite_slot ff_gui
data remove storage fossil_frights:invite selected
function fossil_frights:game/settings/multiplayer/gui/set_selected with storage fossil_frights:invite
execute unless data storage fossil_frights:invite selected run function fossil_frights:messages/multiplayer/player_no_longer_online
execute unless data storage fossil_frights:invite selected run return 0
function fossil_frights:game/settings/multiplayer/gui/try_send
