/// @description Insert description here


muted = !muted;
if(muted) {
	audio_pause_all();
} else {
	audio_play_sound(sound0, 1, true);
}