/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32281FB8
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "States.DEAD"
if(state == States.DEAD)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 59DF426B
	/// @DnDParent : 32281FB8
	/// @DnDArgument : "value" "image_number - 1"
	/// @DnDArgument : "instvar" "11"
	image_index = image_number - 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3296D7E5
	/// @DnDParent : 32281FB8
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 61391F30
	/// @DnDParent : 32281FB8
	/// @DnDArgument : "room" "GameOver"
	/// @DnDSaveInfo : "room" "GameOver"
	room_goto(GameOver);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 6EBD1939
	/// @DnDParent : 32281FB8
	/// @DnDArgument : "not" "1"
	var l6EBD1939_0 = noone;
	if (!audio_is_playing(l6EBD1939_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 451D3963
		/// @DnDParent : 6EBD1939
		audio_stop_all();
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 4533DE7E
		/// @DnDParent : 6EBD1939
		/// @DnDArgument : "soundid" "Musica_de_Derrota_2"
		/// @DnDSaveInfo : "soundid" "Musica_de_Derrota_2"
		audio_play_sound(Musica_de_Derrota_2, 0, 0);
	}
}