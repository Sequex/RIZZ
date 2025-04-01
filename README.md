## What is RIZZ?

RIZZ (Rhythmically Immersive Zonal Zones) is a modifiable template where mapmakers can implement music into maps with ease of customizeability, making use of a macro-based storage system for reading and loading 'pools.'
Some manual setup is required to use RIZZ to specify:
- Music Pools (Playlists)
- Music Tracks
- Track Durations
- Replay Conditions

RIZZ will select a 'pool' based on 'conditions' the mapmaker can specify (such as biome or area checks). A 'track' is then selected at random from these pools, lasting the entire 'duration' before loading the next song. If your pool has 2 or more tracks, the same track won't play twice consecutively (i.e. if you have tracks [1, 2, 3], and track 1 is currently playing, then track 2 or 3 must play before track 1 can be played again)

## Setup
First, in function _sqx.music:music/set_pools_, a 'pool' of track IDs must be created. You can create as many pools as you like with as many tracks included, but each track must be a integer to be valid.

Second, in function _sqx.music:music/get_pool_, you must specify the 'conditions' to load a pool. This can be as simple as a biome check, an external score, or unconditional.
When called, the current pool is stored in the storage _sqx:music $(id).pool.curr_ using a pool specified above. Only one unique pool should be stored here at a time.

Third, in function _sqx.music:music/play_, you must specify the tracks played by their corresponding ID. This would be a /playsound referencing a resource location for your music. By default, all music is played in the jukeboxes/records category.

Fourth, in function _sqx.music:music/get_duration_, for each track ID, you must specify a 'duration' for each track in **seconds**. This is the cooldown before another track can play, which will override the current track with a new one.
A 5 second buffer is added at the end of each song to give breathing space for the next song to play. You can change this in _sqx.music:music/play_.


Once the datapack is setup and initialized in your world, the player will also need to be initialized.
Players have a score 'player.music', which is set to 1 by default. This can be turned to 0 to stop tracking the system on the player.
Players have a score 'music.cd', which is set to -1 by default. This is a timer that ticks down every second, playing a new track once it reaches 0. At -1 or lower, players won't be able to play a new track.
These can be set and read at any point to control system functionality for each player.

## Helper Functions
RIZZ comes with a few functions that mapmakers can use in their own external datapacks.
- _sqx.music:helper/id_func_ is a macro function that takes $(func) as a function to call with the player's ID, used primarily to read and modify a player's unique playlist.
- _sqx.music:helper/rng_ is a macro function that takes $(min) and $(max) as integers, generating a random number in _$rng music.var_ as output.
- _sqx.music:helper/stop_ is a function that stops all playing tracks and sets the player's 'music.cd' score to -1.
- _sqx.music:helper/restart_ is a function that stops all playing tracks and sets the player's 'music.cd' score to 1.

When a track is played, the function tag _#minecraft:rizz/play_music_ is called at the end of the _sqx.music:music/play_ function.

## Crediting
This pack uses the **GNU General Public Use License**, included with the pack. In summary:
    Anyone is freely allowed to use these datapacks in any project. (provided you credit me for them.)
    Anyone is freely allowed to make modifications to these datapacks.
    You are allowed to redistribute modified versions, however, I am not responsible for supporting those versions.
    If you redistribute a modified version, it is an "open source" project, just like RIZZ.
    If you redistribute a modified version, you have to credit me.
    You cannot hold me liable for any damages done by using these datapacks.
Crediting can be done at the discretion of the mapmaker, but should be easy to view. Simply crediting "Sequex" as the author or linking to this repository is good enough.

