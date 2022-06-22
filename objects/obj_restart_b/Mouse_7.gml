/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CDB9878
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_index"
image_index = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28A5C6DE
/// @DnDArgument : "var" "press"
/// @DnDArgument : "value" "true"
if(press == true)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4001DD20
	/// @DnDParent : 28A5C6DE
	/// @DnDArgument : "room" "ToLvl1"
	/// @DnDSaveInfo : "room" "ToLvl1"
	room_goto(ToLvl1);
}