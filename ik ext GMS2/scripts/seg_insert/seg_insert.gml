/// @func seg_insert(seg, len, spr)
/// @arg seg	segment index to delete
/// @arg len	length of the segment
/// @arg spr	the sprite to assign the segment

var tony_sid = argument[0];
if (tony_sid < 0 || tony_sid > seg_amount) show_error("segment index out of range: seg[" + string(tony_sid) + "], seg_amount = " + string(seg_amount), true);

for (var tony_i = seg_amount+1; tony_i > tony_sid; tony_i--) {
	seg_x[@ tony_i]   = seg_x[tony_i-1];
	seg_y[@ tony_i]   = seg_y[tony_i-1];
	seg_len[@ tony_i] = seg_len[tony_i-1];
	seg_spr[@ tony_i] = seg_spr[tony_i-1];
}
arm_length		 += argument[1];
seg_len[@ tony_i] = argument[1];
seg_spr[@ tony_i] = argument[2];

seg_amount++;