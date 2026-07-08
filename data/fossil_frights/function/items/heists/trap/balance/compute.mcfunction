scoreboard players set $trap_guard_count ff_trap_balance 0
scoreboard players set $trap_thief_count ff_trap_balance 0
execute as @a[team=ff_guard,gamemode=!spectator] run scoreboard players add $trap_guard_count ff_trap_balance 1
execute as @a[team=ff_thief,gamemode=!spectator] run scoreboard players add $trap_thief_count ff_trap_balance 1

scoreboard players set $trap_cooldown_ticks ff_trap_balance 200
execute if score $trap_guard_count ff_trap_balance matches 2 run scoreboard players set $trap_cooldown_ticks ff_trap_balance 400
execute if score $trap_guard_count ff_trap_balance matches 3.. run scoreboard players set $trap_cooldown_ticks ff_trap_balance 600
execute if score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players remove $trap_cooldown_ticks ff_trap_balance 100

