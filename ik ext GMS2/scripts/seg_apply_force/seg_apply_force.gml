/// @desc apply vector force to a segment
/// @func seg_apply_force(seg, force, dir)
/// @arg seg	segment index
/// @arg force	force to apply
/// @arg dir	direction to apply force

var tony_sid = argument[0],
	tony_len = argument[1],
	tony_dir = argument[2];
	
if (tony_sid < 0 || tony_sid > seg_amount) show_error("segment index out of range: seg[" + string(tony_sid) + "], seg_amount = " + string(seg_amount), true);
	
var tony_ldx = lengthdir_x(tony_len, tony_dir),
	tony_ldy = lengthdir_y(tony_len, tony_dir);
	
seg_x[@ tony_sid] += tony_ldx;
seg_y[@ tony_sid] += tony_ldy;