execute if score $defeat_anim ff_game_state matches 1 if entity @a[team=ff_guard,limit=1] run tellraw @a[team=ff_guard] ["<Boss> Hey ",{"selector":"@a[team=ff_guard]","separator":" and "}]
