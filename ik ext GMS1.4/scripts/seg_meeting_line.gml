///seg_meeting_line(seg, obj);
// @arg seg	segment index
// @arg obj	object to check for

var tony_sid = argument[0];
if (tony_sid < 0 || tony_sid > seg_amount) show_error("segment index out of range: seg[" + string(tony_sid) + "], seg_amount = " + string(seg_amount), true);
return collision_line(seg_x[tony_sid], seg_y[tony_sid], seg_x[tony_sid+1], seg_y[tony_sid], argument[1], false, true);

