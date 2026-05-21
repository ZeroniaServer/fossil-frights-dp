bossbar remove fossil_frights:bossbar
function fossil_frights:messages/bossbar/waiting_to_start
bossbar set fossil_frights:bossbar players @a
bossbar set fossil_frights:bossbar visible true
bossbar set fossil_frights:bossbar color white
bossbar set fossil_frights:bossbar style progress
bossbar set fossil_frights:bossbar max 6000
bossbar set fossil_frights:bossbar value 0
bossbar remove fossil_frights:hazards
bossbar add fossil_frights:hazards [{"text":""}]
bossbar set fossil_frights:hazards players @a
bossbar set fossil_frights:hazards visible false
bossbar set fossil_frights:hazards color blue
bossbar set fossil_frights:hazards style progress
bossbar set fossil_frights:hazards max 1
bossbar set fossil_frights:hazards value 1
