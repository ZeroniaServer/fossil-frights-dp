gamerule minecraft:show_death_messages false
execute if data storage fossil_frights:trap_state placer_name run tellraw @a {translate:"ff.death.explosive_trap.player",with:[{selector:"@s"},{nbt:"placer_name",storage:"fossil_frights:trap_state",interpret:true,color:"gold"}]}
execute unless data storage fossil_frights:trap_state placer_name run tellraw @a {translate:"ff.death.explosive_trap",with:[{selector:"@s"}]}
kill @s
gamerule minecraft:show_death_messages true
