execute unless block ~ ~ ~ #signs run tellraw @s {color:"red",text:"No sign here"}
execute unless block ~ ~ ~ #signs run return fail

data modify storage fossil_frights:sign line_1 set from block ~ ~ ~ front_text.messages[0]
execute unless data storage fossil_frights:sign line_1{} run data modify storage fossil_frights:sign line_1 set value {}
data remove storage fossil_frights:sign line_1.text
data remove storage fossil_frights:sign line_1.extra
$data modify storage fossil_frights:sign line_1.translate set value "ff.sign.$(id).0"
data modify block ~ ~ ~ front_text.messages[0] set from storage fossil_frights:sign line_1

data modify storage fossil_frights:sign line_2 set from block ~ ~ ~ front_text.messages[1]
execute unless data storage fossil_frights:sign line_2{} run data modify storage fossil_frights:sign line_2 set value {}
data remove storage fossil_frights:sign line_2.text
data remove storage fossil_frights:sign line_2.extra
$data modify storage fossil_frights:sign line_2.translate set value "ff.sign.$(id).1"
data modify block ~ ~ ~ front_text.messages[1] set from storage fossil_frights:sign line_2

data modify storage fossil_frights:sign line_3 set from block ~ ~ ~ front_text.messages[2]
execute unless data storage fossil_frights:sign line_3{} run data modify storage fossil_frights:sign line_3 set value {}
data remove storage fossil_frights:sign line_3.text
data remove storage fossil_frights:sign line_3.extra
$data modify storage fossil_frights:sign line_3.translate set value "ff.sign.$(id).2"
data modify block ~ ~ ~ front_text.messages[2] set from storage fossil_frights:sign line_3

data modify storage fossil_frights:sign line_4 set from block ~ ~ ~ front_text.messages[3]
execute unless data storage fossil_frights:sign line_4{} run data modify storage fossil_frights:sign line_4 set value {}
data remove storage fossil_frights:sign line_4.text
data remove storage fossil_frights:sign line_4.extra
$data modify storage fossil_frights:sign line_4.translate set value "ff.sign.$(id).3"
data modify block ~ ~ ~ front_text.messages[3] set from storage fossil_frights:sign line_4
