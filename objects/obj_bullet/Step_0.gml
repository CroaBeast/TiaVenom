/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C7FA212
/// @DnDArgument : "var" "_dis"
/// @DnDArgument : "value" "point_distance(xstart, ystart, x, y)"
var _dis = point_distance(xstart, ystart, x, y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55BF75E9
/// @DnDArgument : "var" "_dis"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "range"
if(_dis > range)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 537E2B9A
	/// @DnDParent : 55BF75E9
	/// @DnDArgument : "function" "bullet_die"
	bullet_die();
}