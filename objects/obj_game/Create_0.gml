/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71B14FAE
/// @DnDArgument : "code" "enum States {$(13_10)	IDLE,$(13_10)	MOVE,$(13_10)	ATTACK,$(13_10)	DEAD,$(13_10)}$(13_10)"
enum States {
	IDLE,
	MOVE,
	ATTACK,
	DEAD,
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79199D40
/// @DnDInput : 2
/// @DnDArgument : "expr_1" "0.93"
/// @DnDArgument : "var" "global.mp_grid"
/// @DnDArgument : "var_1" "global.drag"
global.mp_grid = 0;
global.drag = 0.93;