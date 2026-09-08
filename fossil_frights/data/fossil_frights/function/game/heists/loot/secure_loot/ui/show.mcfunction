# Progress Frames
title @s times 0 7 0
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 0 unless score @s ff_heist_loot_security_ui matches 0 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.780}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 0 run scoreboard players set @s ff_heist_loot_security_ui 0
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 0 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 2 run scoreboard players set @s ff_heist_loot_security_ui 1
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 2 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 4 unless score @s ff_heist_loot_security_ui matches 3 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.850}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 4 run scoreboard players set @s ff_heist_loot_security_ui 3
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 4 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 6 run scoreboard players set @s ff_heist_loot_security_ui 4
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 6 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 8 unless score @s ff_heist_loot_security_ui matches 6 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.920}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 8 run scoreboard players set @s ff_heist_loot_security_ui 6
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 8 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 10 run scoreboard players set @s ff_heist_loot_security_ui 7
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 10 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 12 unless score @s ff_heist_loot_security_ui matches 9 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.990}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 12 run scoreboard players set @s ff_heist_loot_security_ui 9
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 12 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 14 run scoreboard players set @s ff_heist_loot_security_ui 10
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 14 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 16 unless score @s ff_heist_loot_security_ui matches 12 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.060}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 16 run scoreboard players set @s ff_heist_loot_security_ui 12
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 16 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 18 run scoreboard players set @s ff_heist_loot_security_ui 13
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 18 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 20 unless score @s ff_heist_loot_security_ui matches 15 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.130}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 20 run scoreboard players set @s ff_heist_loot_security_ui 15
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 20 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 22 run scoreboard players set @s ff_heist_loot_security_ui 17
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 22 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 24 unless score @s ff_heist_loot_security_ui matches 18 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.200}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 24 run scoreboard players set @s ff_heist_loot_security_ui 18
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 24 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 26 run scoreboard players set @s ff_heist_loot_security_ui 20
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 26 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 28 unless score @s ff_heist_loot_security_ui matches 21 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.270}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 28 run scoreboard players set @s ff_heist_loot_security_ui 21
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 28 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 30 run scoreboard players set @s ff_heist_loot_security_ui 23
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 30 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 32 unless score @s ff_heist_loot_security_ui matches 24 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.340}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 32 run scoreboard players set @s ff_heist_loot_security_ui 24
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 32 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 34 run scoreboard players set @s ff_heist_loot_security_ui 26
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 34 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 36 unless score @s ff_heist_loot_security_ui matches 27 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.410}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 36 run scoreboard players set @s ff_heist_loot_security_ui 27
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 36 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 38 run scoreboard players set @s ff_heist_loot_security_ui 29
execute if score @s ff_heist_loot_security_phase matches 1 if score @s ff_heist_loot_security_ticks matches 38 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 0 run scoreboard players set @s ff_heist_loot_security_ui 30
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 0 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 6 run scoreboard players set @s ff_heist_loot_security_ui 29
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 6 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 12 unless score @s ff_heist_loot_security_ui matches 27 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.850}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 12 run scoreboard players set @s ff_heist_loot_security_ui 27
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 12 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 18 run scoreboard players set @s ff_heist_loot_security_ui 26
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 18 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 24 unless score @s ff_heist_loot_security_ui matches 24 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.920}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 24 run scoreboard players set @s ff_heist_loot_security_ui 24
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 24 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 30 run scoreboard players set @s ff_heist_loot_security_ui 23
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 30 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 36 unless score @s ff_heist_loot_security_ui matches 21 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.990}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 36 run scoreboard players set @s ff_heist_loot_security_ui 21
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 36 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 42 run scoreboard players set @s ff_heist_loot_security_ui 20
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 42 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 48 unless score @s ff_heist_loot_security_ui matches 18 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.060}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 48 run scoreboard players set @s ff_heist_loot_security_ui 18
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 48 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 54 run scoreboard players set @s ff_heist_loot_security_ui 17
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 54 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 60 run scoreboard players set @s ff_heist_loot_security_ui 15
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 60 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 66 run scoreboard players set @s ff_heist_loot_security_ui 14
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 66 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 72 unless score @s ff_heist_loot_security_ui matches 12 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.200}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 72 run scoreboard players set @s ff_heist_loot_security_ui 12
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 72 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 78 run scoreboard players set @s ff_heist_loot_security_ui 11
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 78 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 84 unless score @s ff_heist_loot_security_ui matches 9 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.270}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 84 run scoreboard players set @s ff_heist_loot_security_ui 9
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 84 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 90 run scoreboard players set @s ff_heist_loot_security_ui 8
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 90 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 96 unless score @s ff_heist_loot_security_ui matches 6 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.340}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 96 run scoreboard players set @s ff_heist_loot_security_ui 6
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 96 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 102 run scoreboard players set @s ff_heist_loot_security_ui 5
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 102 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 108 unless score @s ff_heist_loot_security_ui matches 3 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.410}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 108 run scoreboard players set @s ff_heist_loot_security_ui 3
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 108 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 114 run scoreboard players set @s ff_heist_loot_security_ui 2
execute if score @s ff_heist_loot_security_phase matches 2 if score @s ff_heist_loot_security_ticks matches 114 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 0 unless score @s ff_heist_loot_security_ui matches 0 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.780}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 0 run scoreboard players set @s ff_heist_loot_security_ui 0
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 0 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 3 run scoreboard players set @s ff_heist_loot_security_ui 1
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 3 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 6 unless score @s ff_heist_loot_security_ui matches 3 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.850}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 6 run scoreboard players set @s ff_heist_loot_security_ui 3
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 6 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 9 run scoreboard players set @s ff_heist_loot_security_ui 4
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 9 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 12 unless score @s ff_heist_loot_security_ui matches 6 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.920}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 12 run scoreboard players set @s ff_heist_loot_security_ui 6
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 12 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 15 run scoreboard players set @s ff_heist_loot_security_ui 7
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 15 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 18 unless score @s ff_heist_loot_security_ui matches 9 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.990}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 18 run scoreboard players set @s ff_heist_loot_security_ui 9
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 18 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 21 run scoreboard players set @s ff_heist_loot_security_ui 10
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 21 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 24 unless score @s ff_heist_loot_security_ui matches 12 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.060}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 24 run scoreboard players set @s ff_heist_loot_security_ui 12
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 24 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 27 run scoreboard players set @s ff_heist_loot_security_ui 13
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 27 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 30 unless score @s ff_heist_loot_security_ui matches 15 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.130}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 30 run scoreboard players set @s ff_heist_loot_security_ui 15
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 30 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 33 run scoreboard players set @s ff_heist_loot_security_ui 17
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 33 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 36 unless score @s ff_heist_loot_security_ui matches 18 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.200}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 36 run scoreboard players set @s ff_heist_loot_security_ui 18
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 36 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 39 run scoreboard players set @s ff_heist_loot_security_ui 20
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 39 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 42 unless score @s ff_heist_loot_security_ui matches 21 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.270}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 42 run scoreboard players set @s ff_heist_loot_security_ui 21
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 42 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 45 run scoreboard players set @s ff_heist_loot_security_ui 23
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 45 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 48 unless score @s ff_heist_loot_security_ui matches 24 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.340}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 48 run scoreboard players set @s ff_heist_loot_security_ui 24
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 48 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 51 run scoreboard players set @s ff_heist_loot_security_ui 26
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 51 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 54 unless score @s ff_heist_loot_security_ui matches 27 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.410}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 54 run scoreboard players set @s ff_heist_loot_security_ui 27
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 54 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 57 run scoreboard players set @s ff_heist_loot_security_ui 29
execute if score @s ff_heist_loot_security_phase matches 3 if score @s ff_heist_loot_security_ticks matches 57 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 0 run scoreboard players set @s ff_heist_loot_security_ui 30
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 0 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 4 run scoreboard players set @s ff_heist_loot_security_ui 29
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 4 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 8 unless score @s ff_heist_loot_security_ui matches 27 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.850}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 8 run scoreboard players set @s ff_heist_loot_security_ui 27
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 8 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 12 run scoreboard players set @s ff_heist_loot_security_ui 26
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 12 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 16 unless score @s ff_heist_loot_security_ui matches 24 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.920}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 16 run scoreboard players set @s ff_heist_loot_security_ui 24
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 16 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 20 run scoreboard players set @s ff_heist_loot_security_ui 23
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 20 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 24 unless score @s ff_heist_loot_security_ui matches 21 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:0.990}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 24 run scoreboard players set @s ff_heist_loot_security_ui 21
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 24 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 28 run scoreboard players set @s ff_heist_loot_security_ui 20
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 28 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 32 unless score @s ff_heist_loot_security_ui matches 18 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.060}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 32 run scoreboard players set @s ff_heist_loot_security_ui 18
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 32 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 36 run scoreboard players set @s ff_heist_loot_security_ui 17
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 36 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 40 run scoreboard players set @s ff_heist_loot_security_ui 15
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 40 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 44 run scoreboard players set @s ff_heist_loot_security_ui 14
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 44 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 48 unless score @s ff_heist_loot_security_ui matches 12 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.200}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 48 run scoreboard players set @s ff_heist_loot_security_ui 12
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 48 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 52 run scoreboard players set @s ff_heist_loot_security_ui 11
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 52 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 56 unless score @s ff_heist_loot_security_ui matches 9 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.270}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 56 run scoreboard players set @s ff_heist_loot_security_ui 9
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 56 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 60 run scoreboard players set @s ff_heist_loot_security_ui 8
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 60 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 64 unless score @s ff_heist_loot_security_ui matches 6 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.340}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 64 run scoreboard players set @s ff_heist_loot_security_ui 6
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 64 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 68 run scoreboard players set @s ff_heist_loot_security_ui 5
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 68 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 72 unless score @s ff_heist_loot_security_ui matches 3 run function fossil_frights:game/heists/loot/secure_loot/ui/click {pitch:1.410}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 72 run scoreboard players set @s ff_heist_loot_security_ui 3
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 72 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 76 run scoreboard players set @s ff_heist_loot_security_ui 2
execute if score @s ff_heist_loot_security_phase matches 4 if score @s ff_heist_loot_security_ticks matches 76 run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
