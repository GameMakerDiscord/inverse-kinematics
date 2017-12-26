/// @desc move the arm to x,y and calculate the joints accordingly using the inverse kinematics formula
/// @func arm_move_to(x, y, pin, px, py);
/// @arg x		x location to move to
/// @arg y		y location to move to
/// @arg pin	whether to pin or not (constrain to a position)
/// @arg px		x location to pin/constrain to
/// @arg py		y location to pin/constrain to

//	only fill in the two first arguments if you want the arm to move freely.
//	the last two arguments are where you want to pin the arm to.

var tony_tax = argument[0], 
	tony_tay = argument[1], 
	tony_pin = false,
	tony_pnx = x,
	tony_pny = y;			
			
if (argument_count > 2) {
	tony_pin = argument[2];
	if (tony_pin) {
		if (argument_count > 3) {
			var tony_pnx = argument[3],
				tony_pny = argument[4];
		}
	}
} else tony_pin = arm_pinned;

if (seg_x[	seg_amount] != tony_tax || seg_y[seg_amount] != tony_tay) {
	seg_x[@ seg_amount]  = tony_tax;   
	seg_y[@ seg_amount]  = tony_tay;

	for(var tony_i = seg_amount-1; tony_i >= tony_pin; tony_i--) 
		seg_calculate(	tony_i,	seg_x[@ tony_i+1], 
								seg_y[@ tony_i+1]);
								
	if (tony_pin) {
		seg_x[@ 0] = tony_pnx;
		seg_y[@ 0] = tony_pny;
	
		for(var tony_i = 1; tony_i <= seg_amount; tony_i++)
			seg_calculate(	tony_i,	seg_x[@ tony_i-1], 
									seg_y[@ tony_i-1]);	
	}
} else if (tony_pin && (seg_x[@ 0] != tony_pnx || seg_y[@ 0] != tony_pny)) {
	seg_x[@ 0] = tony_pnx;
	seg_y[@ 0] = tony_pny;
	
	for(var tony_i = 1; tony_i <= seg_amount; tony_i++)
		seg_calculate(	tony_i,	seg_x[@ tony_i-1], 
								seg_y[@ tony_i-1]);
}