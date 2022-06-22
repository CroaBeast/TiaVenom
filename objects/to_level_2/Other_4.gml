/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 74E349D9
/// @DnDArgument : "not" "1"
var l74E349D9_0 = noone;
if (!audio_is_playing(l74E349D9_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4157A84D
	/// @DnDParent : 74E349D9
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0F937F23
	/// @DnDParent : 74E349D9
	/// @DnDArgument : "soundid" "combis_Lima"
	/// @DnDSaveInfo : "soundid" "combis_Lima"
	audio_play_sound(combis_Lima, 0, 0);
}