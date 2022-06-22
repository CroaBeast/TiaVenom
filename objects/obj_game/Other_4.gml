/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 59F5DB2B
/// @DnDArgument : "macro" "TS"
/// @DnDArgument : "value" "32"
#macro TS 32

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A0F6F79
/// @DnDInput : 2
/// @DnDArgument : "var" "_w"
/// @DnDArgument : "value" "ceil(room_width/TS)"
/// @DnDArgument : "var_1" "_h"
/// @DnDArgument : "value_1" "ceil(room_height/TS)"
var _w = ceil(room_width/TS);
var _h = ceil(room_height/TS);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7437574E
/// @DnDArgument : "var" "global.mp_grid"
/// @DnDArgument : "function" "mp_grid_create"
/// @DnDArgument : "arg" "0, 0, _w, _h, TS, TS"
global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5AFEDC9D
/// @DnDArgument : "function" "mp_grid_add_instances"
/// @DnDArgument : "arg" "global.mp_grid, obj_wall, false"
mp_grid_add_instances(global.mp_grid, obj_wall, false);