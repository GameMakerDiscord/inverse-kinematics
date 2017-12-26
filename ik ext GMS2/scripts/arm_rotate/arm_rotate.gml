/// @func arm_rotate(angle, seg, relative, inverse);
/// @arg angle		the amount of degrees to rotate
/// @arg seg		the segment index to rotate around
/// @arg relative	wheter to rotate the arm relative to it's current rotation (true) or set it's angle to the given rotation (false)

//////////////////////////////////////////////////////////////////
//////////  This script is actually Forward Kinematics  //////////
//////////////////////////////////////////////////////////////////

var tony_ang = argument[0],
	tony_seg = argument[1],
	tony_rel = false;
	
if (argument_count > 2) tony_rel = argument[2];

if (tony_rel) {
	var tony_seg_x = [];
	var tony_seg_y = [];
	array_copy(tony_seg_x, 0, seg_x, 0, seg_amount+1);
	array_copy(tony_seg_y, 0, seg_y, 0, seg_amount+1);
}

for (var tony_i = tony_seg; tony_i < seg_amount; tony_i++) {
	
	var tony_ndir = tony_ang;
	
	if (tony_rel) {
		var tony_dir  = point_direction(tony_seg_x[tony_i], tony_seg_y[tony_i], tony_seg_x[tony_i+1], tony_seg_y[tony_i+1]);
		tony_ndir = (tony_dir + tony_ang) mod 360;
	}
	
	var tony_ldx = lengthdir_x(seg_len[tony_i], tony_ndir),
		tony_ldy = lengthdir_y(seg_len[tony_i], tony_ndir);
		
	seg_x[@ tony_i+1] = seg_x[@ tony_i] + tony_ldx;
	seg_y[@ tony_i+1] = seg_y[@ tony_i] + tony_ldy;
}