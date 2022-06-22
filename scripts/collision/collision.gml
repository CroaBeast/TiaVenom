/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 34110024
/// @DnDArgument : "funcName" "collision"
function collision() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7048F449
	/// @DnDInput : 2
	/// @DnDParent : 34110024
	/// @DnDArgument : "var" "_tx"
	/// @DnDArgument : "value" "x"
	/// @DnDArgument : "var_1" "_ty"
	/// @DnDArgument : "value_1" "y"
	var _tx = x;
	var _ty = y;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2242DA8D
	/// @DnDInput : 2
	/// @DnDParent : 34110024
	/// @DnDArgument : "expr" "xprevious"
	/// @DnDArgument : "expr_1" "yprevious"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71F8524B
	/// @DnDInput : 2
	/// @DnDParent : 34110024
	/// @DnDArgument : "var" "_ds_x"
	/// @DnDArgument : "value" "abs(_tx - x)"
	/// @DnDArgument : "var_1" "_ds_y"
	/// @DnDArgument : "value_1" "abs(_ty - y)"
	var _ds_x = abs(_tx - x);
	var _ds_y = abs(_ty - y);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 3CD0B767
	/// @DnDParent : 34110024
	/// @DnDArgument : "times" "_ds_x"
	repeat(_ds_x)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 0215D9C1
		/// @DnDParent : 3CD0B767
		/// @DnDArgument : "x" "sign(_tx - x)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_wall"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "obj_wall"
		var l0215D9C1_0 = instance_place(x + sign(_tx - x), y + 0, obj_wall);
		if (!(l0215D9C1_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 437F764B
			/// @DnDParent : 0215D9C1
			/// @DnDArgument : "expr" "sign(_tx - x)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += sign(_tx - x);
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 02846A89
	/// @DnDParent : 34110024
	/// @DnDArgument : "times" "_ds_y"
	repeat(_ds_y)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 212B3CB5
		/// @DnDParent : 02846A89
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(_ty - y)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_wall"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "obj_wall"
		var l212B3CB5_0 = instance_place(x + 0, y + sign(_ty - y), obj_wall);
		if (!(l212B3CB5_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6F6B2828
			/// @DnDParent : 212B3CB5
			/// @DnDArgument : "expr" "sign(_ty - y)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += sign(_ty - y);
		}
	}
}