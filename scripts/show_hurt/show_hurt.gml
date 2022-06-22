/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 02CC67FB
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "show_hurt"
function show_hurt() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29D71FEB
	/// @DnDParent : 02CC67FB
	/// @DnDArgument : "var" "knockback_time--"
	/// @DnDArgument : "op" "2"
	if(knockback_time-- > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 268B35FF
		/// @DnDParent : 29D71FEB
		/// @DnDArgument : "value" "s_hurt"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_hurt;
	}
}