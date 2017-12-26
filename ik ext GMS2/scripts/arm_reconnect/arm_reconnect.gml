/// @desc connects all the segments without moving towards any specified point.
/// @func arm_reconnect(pin, pin_x, pin_y)
/// @arg pin	(optional) whether to pin or not (overrides arm_pinned)
/// @arg pin_x	(optional) the x position to pin to 
/// @arg pin_y	(optional) the y position to pin to 

var tony_pin = arm_pinned,
	tony_pnx = x,
	tony_pny = y;

if (argument_count > 0) {
	tony_pin = argument[0];
	if (argument_count > 1) {
		tony_pnx = argument[1];
		tony_pny = argument[2];
	}	
}

if (!tony_pin) {
	for(var tony_i = seg_amount-1; tony_i >= tony_pin; tony_i--) 
		seg_calculate(	tony_i,	seg_x[@ tony_i+1], 
								seg_y[@ tony_i+1]);
} else {
	if (seg_x[0] != tony_pnx || seg_y[0] != tony_pny) {
		seg_x[@ 0] = tony_pnx;
		seg_y[@ 0] = tony_pny;
	
		for(var tony_i = 1; tony_i <= seg_amount; tony_i++)
			seg_calculate(	tony_i,	seg_x[@ tony_i-1], 
									seg_y[@ tony_i-1]);
	}
}