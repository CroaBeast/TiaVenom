/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1B21873C
/// @DnDArgument : "funcName" "check_if_stopped"
function check_if_stopped() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4D732F69
	/// @DnDParent : 1B21873C
	/// @DnDArgument : "expr" "abs(hsp) < 0.1"
	if(abs(hsp) < 0.1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30E60C77
		/// @DnDParent : 4D732F69
		/// @DnDArgument : "var" "hsp"
		hsp = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 380522C4
	/// @DnDParent : 1B21873C
	/// @DnDArgument : "expr" "abs(vsp) < 0.1"
	if(abs(vsp) < 0.1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25865B5C
		/// @DnDParent : 380522C4
		/// @DnDArgument : "var" "vsp"
		vsp = 0;
	}
}