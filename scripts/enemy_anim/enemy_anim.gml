/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 37C75164
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "enemy_anim"
function enemy_anim() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 48BB99C4
	/// @DnDParent : 37C75164
	/// @DnDArgument : "expr" "state"
	var l48BB99C4_0 = state;
	switch(l48BB99C4_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2A2C1778
		/// @DnDParent : 48BB99C4
		/// @DnDArgument : "const" "States.IDLE"
		case States.IDLE:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5313D02D
			/// @DnDParent : 2A2C1778
			/// @DnDArgument : "expr" "s_idle"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = s_idle;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 250A3F7F
			/// @DnDParent : 2A2C1778
			/// @DnDArgument : "function" "show_hurt"
			show_hurt();
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 096C4D83
		/// @DnDParent : 48BB99C4
		/// @DnDArgument : "const" "States.MOVE"
		case States.MOVE:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 71020E32
			/// @DnDParent : 096C4D83
			/// @DnDArgument : "expr" "s_walk"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = s_walk;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 0A0CFE92
			/// @DnDParent : 096C4D83
			/// @DnDArgument : "function" "show_hurt"
			show_hurt();
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1EF8DDAB
		/// @DnDParent : 48BB99C4
		/// @DnDArgument : "const" "States.ATTACK"
		case States.ATTACK:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0ECCCE24
			/// @DnDParent : 1EF8DDAB
			/// @DnDArgument : "expr" "s_attack"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = s_attack;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 5F8D24B8
			/// @DnDParent : 1EF8DDAB
			/// @DnDArgument : "function" "show_hurt"
			show_hurt();
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 64B70C33
		/// @DnDParent : 48BB99C4
		/// @DnDArgument : "const" "States.DEAD"
		case States.DEAD:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 05AC4EC7
			/// @DnDParent : 64B70C33
			/// @DnDArgument : "expr" "s_death"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = s_death;
			break;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03054B8A
	/// @DnDParent : 37C75164
	/// @DnDArgument : "expr" "-bbox_bottom"
	/// @DnDArgument : "var" "depth"
	depth = -bbox_bottom;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6903808E
	/// @DnDInput : 2
	/// @DnDParent : 37C75164
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "y"
	/// @DnDArgument : "var" "xp"
	/// @DnDArgument : "var_1" "yp"
	xp = x;
	yp = y;
}