/// @desc connects all the segments without moving towards any specified point.
/// @func arm_reconnect(pin, pin_x, pin_y)
/// @arg pin	(optional) whether to pin or not (overrides arm_pinned)
/// @arg pin_x	(optional) the x position to pin to 
/// @arg pin_y	(optional) the y position to pin to 

var _pin = arm_pinned,
	_pnx = x,
	_pny = y;

if (argument_count > 0) {
	_pin = argument[0];
	if (argument_count > 1) {
		_pnx = argument[1];
		_pny = argument[2];
	}	
}

if (!_pin) {
	for(var _i = seg_amount-1; _i >= _pin; _i--) 
		seg_calculate(	_i,	seg_x[@ _i+1], 
								seg_y[@ _i+1]);
} else {
	if (seg_x[0] != _pnx || seg_y[0] != _pny) {
		seg_x[@ 0] = _pnx;
		seg_y[@ 0] = _pny;
	
		for(var _i = 1; _i <= seg_amount; _i++)
			seg_calculate(	_i,	seg_x[@ _i-1], 
									seg_y[@ _i-1]);
	}
}