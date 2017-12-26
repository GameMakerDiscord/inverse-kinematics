/// @func seg_set_length(seg, len);
/// @arg seg	the segment index to modify the length of;
/// @arg len	length to set the segment to

var tony_sid = argument[0], tony_six = argument[1];
if (tony_sid < 0 || tony_sid > seg_amount) show_error("segment index out of range: seg[" + string(tony_sid) + "], seg_amount = " + string(seg_amount), true);
arm_length  += tony_six-seg_len[tony_sid];
seg_len[tony_six] = tony_sid;