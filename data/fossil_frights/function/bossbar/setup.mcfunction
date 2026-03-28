bossbar remove fossil_frights:bossbar
function fossil_frights:messages/bossbar/waiting_to_start
bossbar set fossil_frights:bossbar players @a
bossbar set fossil_frights:bossbar visible true
bossbar set fossil_frights:bossbar color white
bossbar set fossil_frights:bossbar style progress
bossbar set fossil_frights:bossbar max 6000
bossbar set fossil_frights:bossbar value 0
