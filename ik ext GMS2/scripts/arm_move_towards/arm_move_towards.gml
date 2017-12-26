/// @desc move the arm towards dir and calculate the joints accordingly using the inverse kinematics formula
/// @func arm_move_dir(x, y, len, pin, px, py);
/// @arg tx		x position to move towards
/// @arg ty		y position to move towards
/// @arg len	length to move each step
/// @arg pin	whether to pin or not (constrain to a position)
/// @arg px		x location to pin/constrain to
/// @arg py		y location to pin/constrain to

//	only fill in the three first arguments if you want the arm to move freely.
//	the last two arguments are where you want to pin the arm to.

var tony_tx  = argument[0], 
	tony_ty  = argument[1],
	tony_dir = point_direction(seg_x[seg_amount], seg_y[seg_amount], tony_tx, tony_ty),
	tony_len = min(argument[2], point_distance(seg_x[seg_amount], seg_y[seg_amount], tony_tx, tony_ty)),
	tony_pin = false,
	tony_pnx = x,
	tony_pny = y;			
			
if (argument_count > 3) {
	tony_pin = argument[3];
	if (tony_pin) {
		if (argument_count > 4) {
			var tony_pnx = argument[4],
				tony_pny = argument[5];
		}
	}
} else tony_pin = arm_pinned;

if (tony_len != 0) {
	seg_x[@ seg_amount] += dcos(tony_dir)*tony_len;   
	seg_y[@ seg_amount] += dsin(360-tony_dir)*tony_len; 

	for(var tony_i = seg_amount-1; tony_i >= tony_pin; tony_i--) 
		seg_calculate(	tony_i,	seg_x[@ tony_i+1], 
								seg_y[@ tony_i+1]);
}

if (tony_pin && (seg_x[@ 0] != tony_pnx || seg_y[@ 0] != tony_pny || tony_len != 0)) {
	seg_x[@ 0] = tony_pnx;
	seg_y[@ 0] = tony_pny;
	
	for(var tony_i = 1; tony_i <= seg_amount; tony_i++)
		seg_calculate(	tony_i,	seg_x[@ tony_i-1], 
								seg_y[@ tony_i-1]);
}

return (arm_end_x == tony_tx && arm_end_y == tony_ty);