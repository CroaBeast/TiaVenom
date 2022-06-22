/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2E0FA731
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1DD9BB66
/// @DnDInput : 2
/// @DnDArgument : "expr" "30"
/// @DnDArgument : "expr_1" "hp_max"
/// @DnDArgument : "var" "hp_max"
/// @DnDArgument : "var_1" "hp"
hp_max = 30;
hp = hp_max;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68079C07
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "alert"
alert = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 110E3FB6
/// @DnDInput : 3
/// @DnDArgument : "expr" "220"
/// @DnDArgument : "expr_1" "1.75"
/// @DnDArgument : "expr_2" "5"
/// @DnDArgument : "var" "alert_dis"
/// @DnDArgument : "var_1" "move_spd"
/// @DnDArgument : "var_2" "attack_dis"
alert_dis = 220;
move_spd = 1.75;
attack_dis = 5;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6F411A3D
/// @DnDArgument : "var" "path"
/// @DnDArgument : "function" "path_add"
path = path_add();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 331B6CE3
/// @DnDInput : 2
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "expr_1" "irandom(45)"
/// @DnDArgument : "var" "calc_path_delay"
/// @DnDArgument : "var_1" "calc_path_timer"
calc_path_delay = 20;
calc_path_timer = irandom(45);