data modify storage sqx:music var.curr_track set value {}

# Iterate through pool.curr until all tracks are exhausted
$execute if data storage sqx:music $(id).pool.curr[0] run data modify storage sqx:music var.curr_track set from storage sqx:music $(id).pool.curr[$(roll)]
$execute if data storage sqx:music $(id).pool.curr[0] run data remove storage sqx:music $(id).pool.curr[$(roll)]

# Reset pool.curr if fully exhausted
$execute unless data storage sqx:music $(id).pool.curr[0] run function sqx.music:music/reset_pool with storage sqx:music var
execute unless data storage sqx:music var.curr_track run function sqx.music:music/select_track

execute if data storage sqx:music var.curr_track run function sqx.music:music/play with storage sqx:music var