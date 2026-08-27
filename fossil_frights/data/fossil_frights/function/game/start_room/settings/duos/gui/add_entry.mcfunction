scoreboard players add $invite_idx ff_gui 1
data remove storage fossil_frights:invite entry
execute store result storage fossil_frights:invite entry.idx int 1 run scoreboard players get $invite_idx ff_gui
function fossil_frights:player/util/write_username {to:"storage fossil_frights:invite entry.name"}
execute store result storage fossil_frights:invite entry.u0 int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:invite entry.u1 int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:invite entry.u2 int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:invite entry.u3 int 1 run scoreboard players get @s ff_active_uuid_3
data modify storage fossil_frights:invite entries append from storage fossil_frights:invite entry
function fossil_frights:game/start_room/settings/duos/gui/append_button with storage fossil_frights:invite entry
