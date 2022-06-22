/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 579E483E
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "States.DEAD"
if(state == States.DEAD)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 29767350
	/// @DnDParent : 579E483E
	/// @DnDArgument : "value" "image_number - 1"
	/// @DnDArgument : "instvar" "11"
	image_index = image_number - 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 01D215A5
	/// @DnDParent : 579E483E
	/// @DnDArgument : "speed" "0"
	image_speed = 0;
}