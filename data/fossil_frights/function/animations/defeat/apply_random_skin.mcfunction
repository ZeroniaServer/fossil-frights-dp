data remove storage fossil_frights:game_over_animation boss_skin
execute store result score #boss_skin ff_boss_skin run random value 0..18
execute if score #boss_skin ff_boss_skin matches 0..16 run data modify storage fossil_frights:game_over_animation boss_skin set value '{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRkZTNhYzZiODQ4MDllMTVjNWNkMzJlOWRkOTUxNzIzMTQ0OWVjZGFmYjVhN2U4NTMxNzhkY2FiOTNiNCJ9fX0="}]}'
execute if score #boss_skin ff_boss_skin matches 17 run data modify storage fossil_frights:game_over_animation boss_skin set value '{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWY0YTAxNzM5NjljNmIwNDMyZTBlM2E4MzA2M2MwNjQ3OTA1ODU5Y2Q2YzFhMzY4ZmRkN2MyMTRlMWY2MzYwNCJ9fX0="}]}'
execute if score #boss_skin ff_boss_skin matches 18 run data modify storage fossil_frights:game_over_animation boss_skin set value '{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZkNjBiY2M3Y2NiNmY5MGU0Yjk4NWFiNGNkZDM4NWRlNGQ1NWEyOWEzNDcxMzI1MGUzNWZmY2MwMzYxYzk3NyJ9fX0="}]}'
function fossil_frights:animations/defeat/summon_boss with storage fossil_frights:game_over_animation



