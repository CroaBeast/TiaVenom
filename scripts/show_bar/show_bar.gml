/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7119B6F5
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "show_bar"
function show_bar() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 36D926BB
	/// @DnDParent : 7119B6F5
	/// @DnDArgument : "expr" "hp != hp_max and hp > 0"
	if(hp != hp_max and hp > 0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
		/// @DnDVersion : 1
		/// @DnDHash : 4E84847B
		/// @DnDParent : 36D926BB
		/// @DnDArgument : "x1" "-7"
		/// @DnDArgument : "x1_relative" "1"
		/// @DnDArgument : "y1" "-16"
		/// @DnDArgument : "y1_relative" "1"
		/// @DnDArgument : "x2" "7"
		/// @DnDArgument : "x2_relative" "1"
		/// @DnDArgument : "y2" "-14"
		/// @DnDArgument : "y2_relative" "1"
		/// @DnDArgument : "direction" "1"
		/// @DnDArgument : "value" "hp/hp_max*100"
		/// @DnDArgument : "barcol" "$FF000000"
		/// @DnDArgument : "mincol" "$FF4747CC"
		/// @DnDArgument : "maxcol" "$FF68B25C"
		draw_healthbar(x + -7, y + -16, x + 7, y + -14, hp/hp_max*100, $FFFFFFFF & $FFFFFF, $FF4747CC & $FFFFFF, $FF68B25C & $FFFFFF, 1, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));
	}
}