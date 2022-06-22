// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_player() 
{
	var _dis = distance_to_object(obj_player);

	if(((_dis <= alert_dis) or alert) and _dis > attack_dis == true)
	{
		alert = true;
	
		if(calc_path_timer-- <= 0)
		{
			calc_path_timer = calc_path_delay;
		
			if(x == xp and y == yp)
			{
				var _type = 0;
			}
		
			else
			{
				var _type = 1;
			}
		
			var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, _type);
		
			if(_found_player == true)
			{
				path_start(path, move_spd, path_action_stop, false);
			}
		}
	}

	else
	{
		if(_dis <= attack_dis == true)
		{
			path_end();
		}
	}
}