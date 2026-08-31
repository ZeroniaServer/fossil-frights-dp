scoreboard players set #killed_self ff_dummy 0
execute if score @s ff_active_uuid_0 = #trap ff_active_uuid_0 if score @s ff_active_uuid_1 = #trap ff_active_uuid_1 if score @s ff_active_uuid_2 = #trap ff_active_uuid_2 if score @s ff_active_uuid_3 = #trap ff_active_uuid_3 run scoreboard players set #killed_self ff_dummy 1

gamerule minecraft:show_death_messages false
execute if score #killed_self ff_dummy matches 1 run tellraw @a {translate:"ff.death.explosive_trap.self",with:[{selector:"@s"}]}
execute if score #killed_self ff_dummy matches 0 if data storage fossil_frights:trap_state trap_data.placer_name run tellraw @a {translate:"ff.death.explosive_trap.player",with:[{selector:"@s"},{nbt:"trap_data.placer_name",storage:"fossil_frights:trap_state",interpret:true,color:"gold"}]}
execute if score #killed_self ff_dummy matches 0 unless data storage fossil_frights:trap_state trap_data.placer_name run tellraw @a {translate:"ff.death.explosive_trap",with:[{selector:"@s"}]}
kill @s
gamerule minecraft:show_death_messages true
