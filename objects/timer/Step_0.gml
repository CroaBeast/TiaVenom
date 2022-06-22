/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BDC9395
/// @DnDArgument : "var" "countdown"
if(countdown == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54A23425
	/// @DnDParent : 1BDC9395
	/// @DnDArgument : "expr" "States.DEAD"
	/// @DnDArgument : "var" "obj_player.state"
	obj_player.state = States.DEAD;
}