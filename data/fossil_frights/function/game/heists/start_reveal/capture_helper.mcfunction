$scoreboard players set $$(lootId) ff_heist_reveal -1
$execute if score $$(lootId) ff_heist_loot_state matches 1..3 run scoreboard players operation $$(lootId) ff_heist_reveal = $$(lootId) ff_heist_sidebar
