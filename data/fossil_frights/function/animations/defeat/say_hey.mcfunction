execute if score $defeat_anim ff_game_state matches 1 if entity @a[tag=ff_active,limit=1] run tellraw @a[tag=ff_active] ["<Boss> Hey ",{"selector":"@a[tag=ff_active]","separator":" and "}]
