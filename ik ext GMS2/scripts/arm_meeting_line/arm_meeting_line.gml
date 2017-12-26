/// @func arm_meeting_line(obj)
/// @arg obj object to check for

var tony_obj = argument[0];
for(var tony_i = 0; tony_i < seg_amount; tony_i++) {
	
	var tony_inst = seg_meeting_line(tony_i, tony_obj);
	if (tony_inst != noone) return tony_inst;
}

return noone;