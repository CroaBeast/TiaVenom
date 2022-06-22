/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1EF364EE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 5
/// @DnDArgument : "funcName" "damage_entity"
/// @DnDArgument : "arg" "_tid"
/// @DnDArgument : "arg_1" "_sid"
/// @DnDArgument : "arg_2" "_damage"
/// @DnDArgument : "arg_3" "_time"
/// @DnDArgument : "arg_4" "_not_player"
function damage_entity(_tid, _sid, _damage, _time, _not_player) 
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 6CF40C59
	/// @DnDApplyTo : _tid
	/// @DnDParent : 1EF364EE
	with(_tid) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0BF743FA
		/// @DnDParent : 6CF40C59
		/// @DnDArgument : "expr" "-_damage"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hp"
		hp += -_damage;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4B561C7F
		/// @DnDParent : 6CF40C59
		/// @DnDArgument : "var" "_dead"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "is_dead"
		var _dead = is_dead();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 511BA10C
		/// @DnDParent : 6CF40C59
		/// @DnDArgument : "var" "_not_player"
		/// @DnDArgument : "value" "true"
		if(_not_player == true)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 77045A77
			/// @DnDParent : 511BA10C
			/// @DnDArgument : "function" "path_end"
			path_end();
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 77804762
		/// @DnDParent : 6CF40C59
		/// @DnDArgument : "expr" "_dead"
		if(_dead)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78B5F4F3
			/// @DnDParent : 77804762
			/// @DnDArgument : "var" "_dis"
			/// @DnDArgument : "value" "4"
			var _dis = 4;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 60204D3A
		/// @DnDParent : 6CF40C59
		else
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5A12B7C6
			/// @DnDParent : 60204D3A
			/// @DnDArgument : "var" "_dis"
			/// @DnDArgument : "value" "1"
			var _dis = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18C4975A
		/// @DnDParent : 6CF40C59
		/// @DnDArgument : "var" "_not_player"
		/// @DnDArgument : "value" "false"
		if(_not_player == false)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 3136CEBD
			/// @DnDParent : 18C4975A
			/// @DnDArgument : "var" "_dir"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "function" "point_direction"
			/// @DnDArgument : "arg" "_sid.x, _sid.y, x, y"
			var _dir = point_direction(_sid.x, _sid.y, x, y);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47603D58
			/// @DnDInput : 2
			/// @DnDParent : 18C4975A
			/// @DnDArgument : "expr" "lengthdir_x(_dis, _dir)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "lengthdir_y(_dis, _dir)"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "vsp"
			hsp += lengthdir_x(_dis, _dir);
			vsp += lengthdir_y(_dis, _dir);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 004537C9
		/// @DnDParent : 6CF40C59
		/// @DnDArgument : "var" "_not_player"
		/// @DnDArgument : "value" "true"
		if(_not_player == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C563D61
			/// @DnDParent : 004537C9
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "alert"
			alert = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 53661C4D
			/// @DnDInput : 2
			/// @DnDParent : 004537C9
			/// @DnDArgument : "expr" "_time"
			/// @DnDArgument : "expr_1" "_time"
			/// @DnDArgument : "var" "calc_path_delay"
			/// @DnDArgument : "var_1" "knockback_time"
			calc_path_delay = _time;
			knockback_time = _time;
		}
	
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 2C600292
		/// @DnDParent : 6CF40C59
		/// @DnDArgument : "value" "_dead"
		return _dead;
	}
}