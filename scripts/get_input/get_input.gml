/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7B708B90
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 033BFAE0
	/// @DnDParent : 7B708B90
	/// @DnDArgument : "key" "ord("A")"
	var l033BFAE0_0;
	l033BFAE0_0 = keyboard_check(ord("A"));
	if (l033BFAE0_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02F9BD37
		/// @DnDParent : 033BFAE0
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "left"
		left = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 15C9F768
	/// @DnDParent : 7B708B90
	/// @DnDArgument : "key" "ord("D")"
	var l15C9F768_0;
	l15C9F768_0 = keyboard_check(ord("D"));
	if (l15C9F768_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63A71C9D
		/// @DnDParent : 15C9F768
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "right"
		right = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 10C759F4
	/// @DnDParent : 7B708B90
	/// @DnDArgument : "key" "ord("W")"
	var l10C759F4_0;
	l10C759F4_0 = keyboard_check(ord("W"));
	if (l10C759F4_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F7E724E
		/// @DnDParent : 10C759F4
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "up"
		up = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 226C6F87
	/// @DnDParent : 7B708B90
	/// @DnDArgument : "key" "ord("S")"
	var l226C6F87_0;
	l226C6F87_0 = keyboard_check(ord("S"));
	if (l226C6F87_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 440F7974
		/// @DnDParent : 226C6F87
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "down"
		down = 1;
	}
}