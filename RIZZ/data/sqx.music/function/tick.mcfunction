execute as @a[scores={player.music=1}] run stopsound @s music

scoreboard players add $timer music.var 1

# 1s Clock
scoreboard players operation $time music.var = $timer music.var
scoreboard players operation $time music.var %= #20 music.var
execute if score $time music.var matches 0 as @a at @s if score @s player.music matches 1.. run function sqx.music:music/main
