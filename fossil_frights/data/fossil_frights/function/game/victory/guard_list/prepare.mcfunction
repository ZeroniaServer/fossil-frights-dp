execute store result score $victory_guard_count ff_dummy if entity @a[predicate=fossil_frights:player/team/guard]
execute if score $victory_guard_count ff_dummy matches 2.. run tag @a[predicate=fossil_frights:player/team/guard,sort=random,limit=1] add ff_victory_guard_list_last
