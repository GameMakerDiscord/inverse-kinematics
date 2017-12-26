/// @func arm_meeting_line(obj)
/// @arg obj object to check for

var _obj = argument[0];
for(var _i = 0; _i < seg_amount; _i++) {
	
	var _inst = seg_meeting_line(_i, _obj);
	if (_inst != noone) return _inst;
}

return noone;