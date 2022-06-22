/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BA4BF9A
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "States.DEAD"
if(!(state == States.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 555C5966
	/// @DnDParent : 0BA4BF9A
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "op" "2"
	if(other.hp > 0)
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 648BB9C3
		/// @DnDApplyTo : other
		/// @DnDParent : 555C5966
		with(other) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0823E1F2
			/// @DnDParent : 648BB9C3
			/// @DnDArgument : "expr" "hp - 4"
			/// @DnDArgument : "var" "hp"
			hp = hp - 4;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 1AB8F380
			/// @DnDParent : 648BB9C3
			/// @DnDArgument : "var" "_dead"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "function" "is_dead"
			var _dead = is_dead();
		}
	}
}