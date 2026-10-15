$say "$(name)" session ENDED

scoreboard players reset $(name) ff_login_state
$team leave $(name)
