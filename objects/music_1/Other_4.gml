/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 22210C08
/// @DnDArgument : "soundid" "Musica_Fondo_de_nivel"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Musica_Fondo_de_nivel"
var l22210C08_0 = Musica_Fondo_de_nivel;
if (!audio_is_playing(l22210C08_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0261405F
	/// @DnDParent : 22210C08
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 16BFC373
	/// @DnDParent : 22210C08
	/// @DnDArgument : "soundid" "Musica_Fondo_de_nivel"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "Musica_Fondo_de_nivel"
	audio_play_sound(Musica_Fondo_de_nivel, 0, 1);
}