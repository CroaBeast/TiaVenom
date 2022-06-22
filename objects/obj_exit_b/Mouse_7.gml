/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CDB9878
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_index"
image_index = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28A5C6DE
/// @DnDArgument : "var" "press"
/// @DnDArgument : "value" "true"
if(press == true)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2B1B09D5
	/// @DnDParent : 28A5C6DE
	/// @DnDArgument : "function" "game_end"
	game_end();
}