scoreboard players add $invite_idx ff_gui 1
data remove storage fossil_frights:invite entry
execute store result storage fossil_frights:invite entry.idx int 1 run scoreboard players get $invite_idx ff_gui
function fossil_frights:player/util/write_username {to:"storage fossil_frights:invite entry.name"}
data modify storage fossil_frights:invite entry.uuid set from entity @s UUID
data modify storage fossil_frights:invite entries append from storage fossil_frights:invite entry
function fossil_frights:game/settings/multiplayer/gui/append_button with storage fossil_frights:invite entry
