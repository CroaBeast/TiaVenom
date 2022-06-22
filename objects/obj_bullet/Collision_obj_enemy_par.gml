/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24926B5B
/// @DnDArgument : "var" "other.hp"
/// @DnDArgument : "op" "2"
if(other.hp > 0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2A28B5C2
	/// @DnDParent : 24926B5B
	/// @DnDArgument : "function" "damage_entity"
	/// @DnDArgument : "arg" "other, owner_id, damage, knockback_time, true"
	damage_entity(other, owner_id, damage, knockback_time, true);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 73935B9F
	/// @DnDParent : 24926B5B
	/// @DnDArgument : "function" "bullet_die"
	bullet_die();
}