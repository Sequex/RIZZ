# Run a macro function using the player's music.pl_id, ran as @s
# Hook used primarily to interact with the music system

execute store result storage sqx:music var.id int 1 run scoreboard players get @s music.pl_id
$function $(func) with storage sqx:music var