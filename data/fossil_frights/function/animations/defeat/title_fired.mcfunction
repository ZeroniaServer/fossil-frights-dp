execute if score $defeat_anim ff_game_state matches 1 if entity @a[tag=ff_active,limit=1] run title @a[tag=ff_active] times 0s 4s 1s
execute if score $defeat_anim ff_game_state matches 1 if entity @a[tag=ff_active,limit=1] run title @a[tag=ff_active] subtitle "You weren't fast enough"
execute if score $defeat_anim ff_game_state matches 1 if entity @a[tag=ff_active,limit=1] run title @a[tag=ff_active] title {"bold":true,"color":"red","text":"You're Fired!"}
