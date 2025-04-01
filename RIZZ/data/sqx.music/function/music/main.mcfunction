execute if score @s music.cd matches 1.. run scoreboard players remove @s music.cd 1

execute if score @s music.cd matches 0 run function sqx.music:helper/id_func {func:"sqx.music:music/select_pool"}
