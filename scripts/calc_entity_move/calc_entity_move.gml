/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 42CC3733
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calc_entity_move"
function calc_entity_move() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B83C6B4
	/// @DnDInput : 2
	/// @DnDParent : 42CC3733
	/// @DnDArgument : "expr" "hsp"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "vsp"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x += hsp;
	y += vsp;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FFBA1D1
	/// @DnDParent : 42CC3733
	/// @DnDArgument : "expr" "hsp * global.drag"
	/// @DnDArgument : "var" "hsp"
	hsp = hsp * global.drag;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42418CD4
	/// @DnDParent : 42CC3733
	/// @DnDArgument : "expr" "vsp * global.drag"
	/// @DnDArgument : "var" "vsp"
	vsp = vsp * global.drag;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 63C5DD84
	/// @DnDParent : 42CC3733
	/// @DnDArgument : "function" "check_if_stopped"
	check_if_stopped();
}