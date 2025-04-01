# Because of Datapack limitations, we cannot directly read the duration of a song.
#   The duration is written into the 'music.cd' score, which is the cooldown 
#   before the system selects another track

                                        # Lena Raine - otherside
execute if score $curr_track sqx.var matches 1 run scoreboard players set @s music.cd 195
                                        # Lena Raine - Pigstep
execute if score $curr_track sqx.var matches 2 run scoreboard players set @s music.cd 148
                                        # Aaron Cherof - Relic
execute if score $curr_track sqx.var matches 3 run scoreboard players set @s music.cd 219
                                        # Lena Raine - Creator
execute if score $curr_track sqx.var matches 4 run scoreboard players set @s music.cd 174