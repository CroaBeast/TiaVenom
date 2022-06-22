/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7F8659DB
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_facing"
function check_facing() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 48ED2891
	/// @DnDParent : 7F8659DB
	/// @DnDArgument : "expr" "knockback_time <= 0"
	if(knockback_time <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 192D5CE0
		/// @DnDParent : 48ED2891
		/// @DnDArgument : "var" "_facing"
		/// @DnDArgument : "value" "sign(x - xp)"
		var _facing = sign(x - xp);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A7BF0B7
		/// @DnDParent : 48ED2891
		/// @DnDArgument : "var" "_facing"
		/// @DnDArgument : "not" "1"
		if(!(_facing == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 44A376E4
			/// @DnDParent : 2A7BF0B7
			/// @DnDArgument : "expr" "_facing"
			/// @DnDArgument : "var" "facing"
			facing = _facing;
		}
	}
}