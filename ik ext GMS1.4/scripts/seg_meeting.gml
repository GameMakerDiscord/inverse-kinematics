///seg_meeting(seg, obj);
// @arg segsegment index
// @arg objobject/instance to check for collisions with

var tony_sid = argument[0];
if (tony_sid < 0 || tony_sid > seg_amount) show_error("segment index out of range: seg[" + string(tony_sid) + "], seg_amount = " + string(seg_amount), true);
if (sprite_exists(seg_spr[tony_sid])) {
return seg_meeting_mask(tony_sid, argument[1]);
} else return seg_meeting_line(tony_sid, argument[1]);

