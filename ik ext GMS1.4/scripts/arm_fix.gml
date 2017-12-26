///arm_fix(obj)
// @arg obj	object to avoid

/////////////////////////////////////////////////////////////////
///////  Experimental/half-assed function, use with care  ///////
/////////////////////////////////////////////////////////////////

var tony_output = 0;
for(var tony_i = 0; tony_i <= seg_amount; tony_i++) {
	
	var tony_sgx = seg_x[tony_i],
		tony_sgy = seg_y[tony_i];
		
	if (position_meeting(tony_sgx, tony_sgy, argument[0])) {
		
		tony_output++;
		
		var _oid = instance_position(tony_sgx, tony_sgy, argument[0]),
			tony_opt,
			tony_ans = 0;
			
		tony_opt[3] = tony_sgx - _oid.bbox_right;
		tony_opt[2] = tony_sgy - _oid.bbox_bottom;
		tony_opt[1] = tony_sgx - _oid.bbox_left;
		tony_opt[0] = tony_sgy - _oid.bbox_top;
		
		for(var tony_a = 1; tony_a < 4; tony_a++) 
			if (abs(tony_opt[tony_a]) < abs(tony_opt[tony_ans])) tony_ans = tony_a;
		
		if (tony_ans mod 2 == 0) {
				seg_y[@ tony_i] -= tony_opt[tony_ans];
		} else  seg_x[@ tony_i] -= tony_opt[tony_ans];
	}
}
return tony_output;

