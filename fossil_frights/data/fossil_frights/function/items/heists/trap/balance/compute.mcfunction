# Cooldown logic:
# 10s per guard, max 30s. Extra thieves reduce 5s each, min 5s.
# A guard within 10 blocks when a trap goes off adds 10s.
# Explosives: fixed 60s cooldown. More guards: no explosives, Equal: 1 time use, More theives: reusable.

scoreboard players set $trap_guard_count ff_trap_balance 0
scoreboard players set $trap_thief_count ff_trap_balance 0
execute as @a[team=ff_guard,gamemode=!spectator] run scoreboard players add $trap_guard_count ff_trap_balance 1
execute as @a[team=ff_thief,gamemode=!spectator] run scoreboard players add $trap_thief_count ff_trap_balance 1

scoreboard players set $trap_cooldown_ticks ff_trap_balance 200
scoreboard players operation $trap_cooldown_ticks ff_trap_balance *= $trap_guard_count ff_trap_balance
execute if score $trap_guard_count ff_trap_balance matches 3.. run scoreboard players set $trap_cooldown_ticks ff_trap_balance 600

scoreboard players set $trap_thief_excess ff_trap_balance 0
scoreboard players operation $trap_thief_excess ff_trap_balance = $trap_thief_count ff_trap_balance
scoreboard players operation $trap_thief_excess ff_trap_balance -= $trap_guard_count ff_trap_balance
execute if score $trap_thief_excess ff_trap_balance matches 1.. run scoreboard players set $trap_cooldown_reduction ff_trap_balance 100
execute if score $trap_thief_excess ff_trap_balance matches 1.. run scoreboard players operation $trap_cooldown_reduction ff_trap_balance *= $trap_thief_excess ff_trap_balance
execute if score $trap_thief_excess ff_trap_balance matches 1.. run scoreboard players operation $trap_cooldown_ticks ff_trap_balance -= $trap_cooldown_reduction ff_trap_balance
execute if score $trap_cooldown_ticks ff_trap_balance matches ..99 run scoreboard players set $trap_cooldown_ticks ff_trap_balance 100
