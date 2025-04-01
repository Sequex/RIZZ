## Create a Pool for an area. Formatted as 'pool.<namespace>'
## A Pool consists of Songs that are selected at random. Must have at least 1 Song.
## A Pool is fully cycled until manually reset or when all Songs have been exhausted.
## Songs must be an Integer, as they are stored and tracked as a score.

data modify storage sqx:music pool.EXAMPLE1 set value [1,2]
data modify storage sqx:music pool.EXAMPLE2 set value [3,4]
data modify storage sqx:music pool.EXAMPLE3 set value [1,2,3,4]
