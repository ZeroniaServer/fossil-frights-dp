bossbar remove fossil_frights:speedrun_timer
bossbar remove fossil_frights:speedrun_delta
bossbar add fossil_frights:speedrun_timer [{text:"",font:"fossil-frights:small_caps",color:"white"}]
bossbar set fossil_frights:speedrun_timer players @a
bossbar set fossil_frights:speedrun_timer visible false
bossbar set fossil_frights:speedrun_timer color blue
bossbar set fossil_frights:speedrun_timer style progress
bossbar set fossil_frights:speedrun_timer max 1
bossbar set fossil_frights:speedrun_timer value 1
bossbar add fossil_frights:speedrun_delta [{text:"",font:"fossil-frights:small_caps",color:"white"}]
bossbar set fossil_frights:speedrun_delta players @a
bossbar set fossil_frights:speedrun_delta visible false
bossbar set fossil_frights:speedrun_delta color blue
bossbar set fossil_frights:speedrun_delta style progress
bossbar set fossil_frights:speedrun_delta max 1
bossbar set fossil_frights:speedrun_delta value 1
