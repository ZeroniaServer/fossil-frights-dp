function fossil_frights:messages/rejoin/expired
execute if entity @s[tag=ff_rejoin_frights] run function fossil_frights:game/reset
execute unless entity @s[tag=ff_rejoin_frights] run function fossil_frights:game/rejoin/cleanup/marker
