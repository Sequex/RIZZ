## Get a Pool from 'sqx.music/music/set_pools'.
## You may implement area and event checks here, selecting a Pool based on conditional checks.
## A Pool is selected and written to '$(id).pool.curr'; You may merge Pools if necessary.

$execute if biome ~ ~ ~ plains run data modify storage sqx:music $(id).pool.curr set from storage sqx:music pool.EXAMPLE1
$execute if biome ~ ~ ~ grove run data modify storage sqx:music $(id).pool.curr set from storage sqx:music pool.EXAMPLE2
$execute if biome ~ ~ ~ desert run data modify storage sqx:music $(id).pool.curr set from storage sqx:music pool.EXAMPLE3
