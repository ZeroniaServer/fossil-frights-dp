execute unless score $defeat_anim ff_game_state matches 1 run return 0
execute unless entity @a[predicate=fossil_frights:player/team/guard,limit=1] run return 0
execute as @a[predicate=fossil_frights:player/team/guard,limit=1] run function fossil_frights:player/util/write_username {to:"storage fossil_frights:game_over_animation player_name"}
data modify storage fossil_frights:game_over_animation boss_name set value {"translate":"ff.boss.hey","color":"white","with":[{"translate":"ff.boss","color":"red"},{"text":""},{"text":", You're Fired"}]}
data modify storage fossil_frights:game_over_animation boss_name.with[1].text set from storage fossil_frights:game_over_animation player_name
data modify entity @e[tag=animation_boss,limit=1] CustomName set from storage fossil_frights:game_over_animation boss_name
