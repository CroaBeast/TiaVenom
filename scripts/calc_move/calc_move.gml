/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3E29A4C3
/// @DnDArgument : "funcName" "calc_move"
function calc_move() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63EE8628
	/// @DnDInput : 2
	/// @DnDParent : 3E29A4C3
	/// @DnDArgument : "expr" "right - left"
	/// @DnDArgument : "expr_1" "down - up"
	/// @DnDArgument : "var" "hmove"
	/// @DnDArgument : "var_1" "vmove"
	hmove = right - left;
	vmove = down - up;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4849CEE8
	/// @DnDParent : 3E29A4C3
	/// @DnDArgument : "var" "hmove"
	/// @DnDArgument : "not" "1"
	if(!(hmove == 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 581EA4B3
		/// @DnDParent : 4849CEE8
		/// @DnDArgument : "expr" "hmove"
		/// @DnDArgument : "var" "facing"
		facing = hmove;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 53F6A28C
	/// @DnDParent : 3E29A4C3
	/// @DnDArgument : "expr" "(hmove != 0) or (vmove != 0)"
	if((hmove != 0) or (vmove != 0))
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5EECF93B
		/// @DnDParent : 53F6A28C
		/// @DnDArgument : "var" "_dir"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "point_direction"
		/// @DnDArgument : "arg" "0, 0, hmove, vmove"
		var _dir = point_direction(0, 0, hmove, vmove);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 507D4953
		/// @DnDParent : 53F6A28C
		/// @DnDArgument : "var" "hmove"
		/// @DnDArgument : "function" "lengthdir_x"
		/// @DnDArgument : "arg" "walk_spd, _dir"
		hmove = lengthdir_x(walk_spd, _dir);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6D3338AB
		/// @DnDParent : 53F6A28C
		/// @DnDArgument : "var" "vmove"
		/// @DnDArgument : "function" "lengthdir_y"
		/// @DnDArgument : "arg" "walk_spd, _dir"
		vmove = lengthdir_y(walk_spd, _dir);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 59406BC9
		/// @DnDInput : 2
		/// @DnDParent : 53F6A28C
		/// @DnDArgument : "value" "hmove"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "value_1" "vmove"
		/// @DnDArgument : "value_relative_1" "1"
		/// @DnDArgument : "instvar_1" "1"
		x += hmove;
		y += vmove;
	}
}