execute if score $heist_regen_lock_timer ff_heist matches 1.. run gamerule naturalRegeneration false
execute if score $heist_regen_lock_timer ff_heist matches 1.. run scoreboard players remove $heist_regen_lock_timer ff_heist 1
execute if score $heist_regen_lock_timer ff_heist matches ..0 run scoreboard players set $heist_regen_lock_timer ff_heist 0
execute if score $heist_regen_lock_timer ff_heist matches 0 run gamerule naturalRegeneration true
