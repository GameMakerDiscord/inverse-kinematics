///seg_get_angle(seg)
// @arg seg	segment index to get angle from

var _sid = argument[0];
if (_sid < 0 || _sid >= seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);
return point_direction(seg_x[_sid], seg_y[_sid], seg_x[_sid+1], seg_y[_sid+1]);
