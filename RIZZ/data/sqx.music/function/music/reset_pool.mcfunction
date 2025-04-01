function sqx.music:music/get_pool with storage sqx:music var

# If new pool has 2 or more tracks, remove last played track from the pool
$execute store result score $temp_pool_size music.var if data storage sqx:music $(id).pool.curr[]
scoreboard players remove $temp_pool_size music.var 1

$execute if score $temp_pool_size music.var matches 0 run data modify storage sqx:music var.curr_track set from storage sqx:music $(id).pool.curr[0]
$execute if score $temp_pool_size music.var matches 1.. run data modify storage sqx:music temp.pool set from storage sqx:music $(id).pool.curr
execute if score $temp_pool_size music.var matches 1.. run function sqx.music:music/reset_recursion with storage sqx:music var