execute as @e[type=item_display,tag=ff_chorus_cola_indicator_batch] on passengers run kill @s[type=text_display]
kill @e[type=item_display,tag=ff_chorus_cola_indicator_batch]
$summon item_display 0 0 0 {Tags:["ff_chorus_cola_indicator_batch"],Passengers:$(passengers)}
