execute as @a[predicate=fossil_frights:player/is_playing,tag=!ff_fade_tp_active,x=79,y=74,z=79,dx=0,dy=0,dz=0] run function fossil_frights:util/fade/queue/sarcophagus
fill 78 75 78 78 75 79 air
function fossil_frights:animations/dinocoin/sarcophagus/reset
