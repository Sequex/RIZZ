# Compare until corresponding track is found
$data modify storage sqx:music temp.compare set value $(curr_track)
data modify storage sqx:music temp.pool_compare set from storage sqx:music temp.pool[0]

execute store success score $compare music.var run data modify storage sqx:music temp.compare set from storage sqx:music temp.pool_compare

data remove storage sqx:music temp.pool[0]

# Recursion
execute if score $compare music.var matches 0 store result score $temp_array_shift music.var if data storage sqx:music temp.pool[]
execute if score $compare music.var matches 0 store result storage sqx:music var.pool_remove int 1 run scoreboard players operation $temp_pool_size music.var -= $temp_array_shift music.var

execute if score $compare music.var matches 0 run function sqx.music:music/remove_prev_track with storage sqx:music var
execute if data storage sqx:music temp.pool[0] if score $compare music.var matches 1 run function sqx.music:music/reset_recursion with storage sqx:music var