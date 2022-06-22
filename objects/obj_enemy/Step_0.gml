/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 53878EEB
/// @DnDArgument : "expr" "state"
var l53878EEB_0 = state;
switch(l53878EEB_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 47375C07
	/// @DnDParent : 53878EEB
	/// @DnDArgument : "const" "States.IDLE"
	case States.IDLE:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 60ED78EB
		/// @DnDParent : 47375C07
		/// @DnDArgument : "function" "calc_entity_move"
		calc_entity_move();
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 15C69439
		/// @DnDParent : 47375C07
		/// @DnDArgument : "script" "check_player"
		/// @DnDSaveInfo : "script" "check_player"
		script_execute(check_player);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A7F085D
		/// @DnDParent : 47375C07
		/// @DnDArgument : "var" "path_index"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "-1"
		if(!(path_index == -1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3F1CEA07
			/// @DnDParent : 3A7F085D
			/// @DnDArgument : "expr" "States.MOVE"
			/// @DnDArgument : "var" "state"
			state = States.MOVE;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 64500666
		/// @DnDParent : 47375C07
		/// @DnDArgument : "script" "enemy_anim"
		/// @DnDSaveInfo : "script" "enemy_anim"
		script_execute(enemy_anim);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 589D5099
	/// @DnDParent : 53878EEB
	/// @DnDArgument : "const" "States.MOVE"
	case States.MOVE:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 50F4D83A
		/// @DnDParent : 589D5099
		/// @DnDArgument : "function" "calc_entity_move"
		calc_entity_move();
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 39E6734D
		/// @DnDParent : 589D5099
		/// @DnDArgument : "script" "check_player"
		/// @DnDSaveInfo : "script" "check_player"
		script_execute(check_player);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6C92FAFD
		/// @DnDParent : 589D5099
		/// @DnDArgument : "script" "check_facing"
		/// @DnDSaveInfo : "script" "check_facing"
		script_execute(check_facing);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21382A79
		/// @DnDParent : 589D5099
		/// @DnDArgument : "var" "path_index"
		/// @DnDArgument : "value" "-1"
		if(path_index == -1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20084F83
			/// @DnDParent : 21382A79
			/// @DnDArgument : "expr" "States.IDLE"
			/// @DnDArgument : "var" "state"
			state = States.IDLE;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 65721632
		/// @DnDParent : 589D5099
		/// @DnDArgument : "script" "enemy_anim"
		/// @DnDSaveInfo : "script" "enemy_anim"
		script_execute(enemy_anim);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2D73CF5B
	/// @DnDParent : 53878EEB
	/// @DnDArgument : "const" "States.ATTACK"
	case States.ATTACK:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4A93E183
		/// @DnDParent : 2D73CF5B
		/// @DnDArgument : "function" "calc_entity_move"
		calc_entity_move();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5A9CF0D1
		/// @DnDParent : 2D73CF5B
		/// @DnDArgument : "function" "check_player"
		check_player();
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2608F558
		/// @DnDParent : 2D73CF5B
		/// @DnDArgument : "script" "enemy_anim"
		/// @DnDSaveInfo : "script" "enemy_anim"
		script_execute(enemy_anim);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 36FFC28F
	/// @DnDParent : 53878EEB
	/// @DnDArgument : "const" "States.DEAD"
	case States.DEAD:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 72485AC2
		/// @DnDParent : 36FFC28F
		/// @DnDArgument : "script" "enemy_anim"
		/// @DnDSaveInfo : "script" "enemy_anim"
		script_execute(enemy_anim);
		break;
}