scoreboard players set @s player.music 1
scoreboard players set @s music.cd -1
scoreboard players set @s title.delay 0

scoreboard players operation @s music.pl_id = $curr music.pl_id
scoreboard players add $curr music.pl_id 1