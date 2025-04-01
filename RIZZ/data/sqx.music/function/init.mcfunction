scoreboard objectives add music.var dummy
    scoreboard players set $timer music.var 0
    scoreboard players set #20 music.var 20
scoreboard objectives add music.cd dummy

scoreboard objectives add player.music dummy

scoreboard objectives add music.pl_id dummy
execute unless score $curr music.pl_id matches 0.. run scoreboard players set $curr music.pl_id 0

function sqx.music:music/set_pools