/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2EF73D55
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "is_dead"
function is_dead() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D1C2E5D
	/// @DnDParent : 2EF73D55
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "States.DEAD"
	if(!(state == States.DEAD))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2093B2E1
		/// @DnDParent : 2D1C2E5D
		/// @DnDArgument : "var" "hp"
		/// @DnDArgument : "op" "3"
		if(hp <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 13F3FB88
			/// @DnDInput : 3
			/// @DnDParent : 2093B2E1
			/// @DnDArgument : "expr" "States.DEAD"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "hp"
			/// @DnDArgument : "var_2" "image_index"
			state = States.DEAD;
			hp = 0;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 022BA6F8
			/// @DnDParent : 2093B2E1
			/// @DnDArgument : "expr" "object_index"
			var l022BA6F8_0 = object_index;
			switch(l022BA6F8_0)
			{
				/// @DnDAction : YoYo Games.Switch.Default
				/// @DnDVersion : 1
				/// @DnDHash : 202EEF2E
				/// @DnDParent : 022BA6F8
				default:
				
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 36E76F0B
				/// @DnDParent : 022BA6F8
				/// @DnDArgument : "const" "obj_player"
				case obj_player:
				
					break;
			}
		
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 2D7BBD45
			/// @DnDParent : 2093B2E1
			/// @DnDArgument : "value" "true"
			return true;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4BAE6992
	/// @DnDParent : 2EF73D55
	else
	{
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 119BE82C
		/// @DnDParent : 4BAE6992
		/// @DnDArgument : "value" "true"
		return true;
	}
}