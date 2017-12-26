/// @desc moves all joints outside of obj's bounding box. 
/// @func arm_fix(obj)
/// @arg obj	object to avoid

/////////////////////////////////////////////////////////////////
///////  Experimental/half-assed function, use with care  ///////
/////////////////////////////////////////////////////////////////

var _output = 0;
for(var _i = 0; _i <= seg_amount; _i++) {
	
	var _sgx = seg_x[_i],
		_sgy = seg_y[_i];
		
	if (position_meeting(_sgx, _sgy, argument[0])) {
		
		_output++;
		
		var _oid = instance_position(_sgx, _sgy, argument[0]),
			_opt = [],
			_ans = 0;
			
		_opt[3] = _sgx - _oid.bbox_right;
		_opt[2] = _sgy - _oid.bbox_bottom;
		_opt[1] = _sgx - _oid.bbox_left;
		_opt[0] = _sgy - _oid.bbox_top;
		
		for(var _a = 1; _a < 4; _a++) 
			if (abs(_opt[_a]) < abs(_opt[_ans])) _ans = _a;
		
		if (_ans mod 2 == 0) {
				seg_y[@ _i] -= _opt[_ans];
		} else  seg_x[@ _i] -= _opt[_ans];
	}
}
return _output;