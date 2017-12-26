/// @desc collision checking for indidvidual segment
/// @func seg_meeting_line(seg, obj);
/// @arg seg	segment index
/// @arg obj	object to check for

var _sid = argument[0];
if (_sid < 0 || _sid > seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);
return collision_line(seg_x[_sid], seg_y[_sid], seg_x[_sid+1], seg_y[_sid], argument[1], false, true);