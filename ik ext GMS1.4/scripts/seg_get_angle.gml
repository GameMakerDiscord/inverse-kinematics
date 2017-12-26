///seg_get_angle(seg)
// @arg seg	segment index to get angle from

var tony_sid = argument[0];
if (tony_sid < 0 || tony_sid >= seg_amount) show_error("segment index out of range: seg[" + string(tony_sid) + "], seg_amount = " + string(seg_amount), true);
return point_direction(seg_x[tony_sid], seg_y[tony_sid], seg_x[tony_sid+1], seg_y[tony_sid+1]);
