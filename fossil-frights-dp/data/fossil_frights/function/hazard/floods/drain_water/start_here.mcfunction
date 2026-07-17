execute unless block ~ ~ ~ water run return fail
execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_drain_water"]}
schedule function fossil_frights:hazard/floods/drain_water/schedule 1t
