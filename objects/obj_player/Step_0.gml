/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 00D5ACE6
/// @DnDArgument : "expr" "state"
var l00D5ACE6_0 = state;
switch(l00D5ACE6_0)
{
	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 60EDA815
	/// @DnDParent : 00D5ACE6
	default:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 325543D2
		/// @DnDParent : 60EDA815
		/// @DnDArgument : "script" "reset_inputs"
		/// @DnDSaveInfo : "script" "reset_inputs"
		script_execute(reset_inputs);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 49E0A2F5
		/// @DnDParent : 60EDA815
		/// @DnDArgument : "script" "get_input"
		/// @DnDSaveInfo : "script" "get_input"
		script_execute(get_input);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7B53C441
		/// @DnDParent : 60EDA815
		/// @DnDArgument : "script" "calc_move"
		/// @DnDSaveInfo : "script" "calc_move"
		script_execute(calc_move);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 74B4B601
		/// @DnDParent : 60EDA815
		/// @DnDArgument : "script" "player_anim"
		/// @DnDSaveInfo : "script" "player_anim"
		script_execute(player_anim);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 40908EEE
		/// @DnDParent : 60EDA815
		/// @DnDArgument : "script" "check_fire"
		/// @DnDSaveInfo : "script" "check_fire"
		script_execute(check_fire);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 03F198C9
	/// @DnDParent : 00D5ACE6
	/// @DnDArgument : "const" "States.DEAD"
	case States.DEAD:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3A72AAA6
		/// @DnDParent : 03F198C9
		/// @DnDArgument : "function" "path_end"
		path_end();
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 2C17F7C3
		/// @DnDParent : 03F198C9
		/// @DnDArgument : "value" "death_player"
		/// @DnDArgument : "instvar" "10"
		sprite_index = death_player;
		break;
}