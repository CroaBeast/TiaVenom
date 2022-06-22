/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 1DC24394
/// @DnDArgument : "not" "1"
var l1DC24394_0 = noone;
if (!audio_is_playing(l1DC24394_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3CC764C8
	/// @DnDParent : 1DC24394
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 62DD51DE
	/// @DnDParent : 1DC24394
	/// @DnDArgument : "soundid" "combis_Lima"
	/// @DnDSaveInfo : "soundid" "combis_Lima"
	audio_play_sound(combis_Lima, 0, 0);
}