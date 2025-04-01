$execute unless data storage sqx:music $(id).pool.curr[0] run function sqx.music:music/reset_pool with storage sqx:music var

$execute store result score $array_count music.var if data storage sqx:music $(id).pool.curr[]
execute store result storage sqx:music var.count int 1 run scoreboard players remove $array_count music.var 1
$execute if data storage sqx:music $(id).pool.curr[0] run function sqx.music:music/select_rng with storage sqx:music var

$execute if data storage sqx:music $(id).pool.curr[0] run function sqx.music:music/select_track with storage sqx:music var