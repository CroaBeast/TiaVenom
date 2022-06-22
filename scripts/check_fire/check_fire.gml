/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3B21BB60
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_fire"
function check_fire() 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 175F6F19
	/// @DnDParent : 3B21BB60
	var l175F6F19_0;
	l175F6F19_0 = mouse_check_button(mb_left);
	if (l175F6F19_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1CDDC872
		/// @DnDParent : 175F6F19
		/// @DnDArgument : "var" "can_fire"
		/// @DnDArgument : "value" "true"
		if(can_fire == true)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 6A2064DF
			/// @DnDParent : 1CDDC872
			/// @DnDArgument : "soundid" "Disparo"
			/// @DnDSaveInfo : "soundid" "Disparo"
			audio_play_sound(Disparo, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 377B6EA1
			/// @DnDParent : 1CDDC872
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_fire"
			can_fire = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 49BD650A
			/// @DnDParent : 1CDDC872
			/// @DnDArgument : "steps" "fire_rate"
			alarm_set(0, fire_rate);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F5BB458
			/// @DnDParent : 1CDDC872
			/// @DnDArgument : "var" "_dir"
			/// @DnDArgument : "value" "point_direction(x, y, mouse_x, mouse_y)"
			var _dir = point_direction(x, y, mouse_x, mouse_y);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6D413788
			/// @DnDParent : 1CDDC872
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "_inst"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDArgument : "layer" ""Bullet""
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var _inst = instance_create_layer(x + 0, y + 0, "Bullet", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 4F30F25B
			/// @DnDApplyTo : _inst
			/// @DnDParent : 1CDDC872
			with(_inst) {
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 2673ABB9
				/// @DnDInput : 3
				/// @DnDParent : 4F30F25B
				/// @DnDArgument : "value" "other.bullet_speed"
				/// @DnDArgument : "value_1" "_dir"
				/// @DnDArgument : "value_2" "_dir"
				/// @DnDArgument : "instvar" "3"
				/// @DnDArgument : "instvar_1" "2"
				/// @DnDArgument : "instvar_2" "12"
				speed = other.bullet_speed;
				direction = _dir;
				image_angle = _dir;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 57B0BE23
				/// @DnDParent : 4F30F25B
				/// @DnDArgument : "expr" "other"
				/// @DnDArgument : "var" "owner_id"
				owner_id = other;
			}
		}
	}
}