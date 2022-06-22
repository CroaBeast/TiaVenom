/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 42D3FFBE
/// @DnDInput : 4
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "expr_1" "200"
/// @DnDArgument : "expr_2" "noone"
/// @DnDArgument : "expr_3" "2"
/// @DnDArgument : "var" "damage"
/// @DnDArgument : "var_1" "range"
/// @DnDArgument : "var_2" "owner_id"
/// @DnDArgument : "var_3" "knockback_time"
damage = 5;
range = 200;
owner_id = noone;
knockback_time = 2;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7E7FE08E
/// @DnDArgument : "funcName" "bullet_die"
function bullet_die() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 29AB0807
	/// @DnDParent : 7E7FE08E
	/// @DnDArgument : "instvar" "3"
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 583EE285
	/// @DnDParent : 7E7FE08E
	/// @DnDArgument : "objind" "o_hit"
	/// @DnDSaveInfo : "objind" "o_hit"
	instance_change(o_hit, true);
}