stopsound @s record
execute store result score $curr_track sqx.var run data get storage sqx:music var.curr_track

# Play a Track
execute if score $curr_track sqx.var matches 1 run playsound music_disc.otherside record @s ~ ~ ~ 1 1 1
execute if score $curr_track sqx.var matches 2 run playsound music_disc.pigstep record @s ~ ~ ~ 1 1 1
execute if score $curr_track sqx.var matches 3 run playsound music_disc.relic record @s ~ ~ ~ 1 1 1
execute if score $curr_track sqx.var matches 4 run playsound music_disc.creator record @s ~ ~ ~ 1 1 1

# Set Cooldown | A 5s buffer is added at the end of each song.
function sqx.music:music/get_duration
scoreboard players add @s music.cd 5

# Additional Commands
function #minecraft:rizz/play_music
