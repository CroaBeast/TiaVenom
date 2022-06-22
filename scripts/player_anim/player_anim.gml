/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2AF5B04B
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "player_anim"
function player_anim() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 079729F8
	/// @DnDParent : 2AF5B04B
	/// @DnDArgument : "expr" "can_fire"
	if(can_fire)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5D1DEDEF
		/// @DnDParent : 079729F8
		/// @DnDArgument : "expr" "hmove != 0 or vmove != 0"
		if(hmove != 0 or vmove != 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 103DBC65
			/// @DnDParent : 5D1DEDEF
			/// @DnDArgument : "value" "run_player"
			/// @DnDArgument : "instvar" "10"
			sprite_index = run_player;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7E0FB62E
		/// @DnDParent : 079729F8
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 582411EE
			/// @DnDParent : 7E0FB62E
			/// @DnDArgument : "value" "raw_player"
			/// @DnDArgument : "instvar" "10"
			sprite_index = raw_player;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7E7FF368
	/// @DnDParent : 2AF5B04B
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 36B00C0C
		/// @DnDParent : 7E7FF368
		/// @DnDArgument : "value" "shoot_player"
		/// @DnDArgument : "instvar" "10"
		sprite_index = shoot_player;
	}
}