$particle minecraft:raid_omen ~ ~$(y) ~ $(dx) $(dy) $(dz) 0 $(count) force @a[tag=ff_heist_thief]
$particle minecraft:trial_omen ~ ~$(y) ~ $(dx) $(dy) $(dz) 0 $(count) force @a[tag=ff_heist_guard,gamemode=!spectator]
$particle minecraft:trial_omen ~ ~$(y) ~ $(dx) $(dy) $(dz) 0 $(count) force @a[gamemode=spectator,tag=!ff_heist_guard]
