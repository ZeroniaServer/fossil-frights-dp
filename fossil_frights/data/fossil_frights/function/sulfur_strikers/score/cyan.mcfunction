scoreboard players add $cyan ff_sulfur 1
scoreboard players set $score_cooldown ff_sulfur 5
advancement grant @a[x=42,y=66,z=-86,dx=35,dy=19,dz=27] only fossil_frights:03_lobby/striker
function fossil_frights:sulfur_strikers/display/setup
function fossil_frights:messages/sulfur_strikers/cyan_scored
function fossil_frights:sulfur_strikers/effects/cyan
data merge entity @s {Size:0}
tp @s 0 -64 0
kill @s
function fossil_frights:sulfur_strikers/ball/spawn
