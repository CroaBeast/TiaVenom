/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11C29678
/// @DnDArgument : "expr" "string("FALTAN: ") + string(countdown)"
/// @DnDArgument : "var" "text"
text = string("FALTAN: ") + string(countdown);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 567CC94F
/// @DnDArgument : "code" "draw_set_font(fnt_text);$(13_10)draw_set_color(c_black);$(13_10)draw_text(47, 50, text);$(13_10)draw_text(53, 50, text);$(13_10)draw_text(50, 47, text);$(13_10)draw_text(50, 53, text);$(13_10)$(13_10)draw_set_font(fnt_text);$(13_10)draw_set_color(c_white);$(13_10)draw_text(50, 50, text);"
draw_set_font(fnt_text);
draw_set_color(c_black);
draw_text(47, 50, text);
draw_text(53, 50, text);
draw_text(50, 47, text);
draw_text(50, 53, text);

draw_set_font(fnt_text);
draw_set_color(c_white);
draw_text(50, 50, text);