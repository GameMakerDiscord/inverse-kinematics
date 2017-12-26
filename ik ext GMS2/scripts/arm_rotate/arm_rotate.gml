/// @func arm_rotate(angle, seg, relative, inverse);
/// @arg angle		the amount of degrees to rotate
/// @arg seg		the segment index to rotate around
/// @arg relative	wheter to rotate the arm relative to it's current rotation (true) or set it's angle to the given rotation (false)

//////////////////////////////////////////////////////////////////
//////////  This script is actually Forward Kinematics  //////////
//////////////////////////////////////////////////////////////////

var _ang = argument[0],
	_seg = argument[1],
	_rel = false;
	
if (argument_count > 2) _rel = argument[2];

if (_rel) {
	var _seg_x = [];
	var _seg_y = [];
	array_copy(_seg_x, 0, seg_x, 0, seg_amount+1);
	array_copy(_seg_y, 0, seg_y, 0, seg_amount+1);
}

for (var _i = _seg; _i < seg_amount; _i++) {
	
	var _ndir = _ang;
	
	if (_rel) {
		var _dir  = point_direction(_seg_x[_i], _seg_y[_i], _seg_x[_i+1], _seg_y[_i+1]);
		_ndir = (_dir + _ang) mod 360;
	}
	
	var _ldx = lengthdir_x(seg_len[_i], _ndir),
		_ldy = lengthdir_y(seg_len[_i], _ndir);
		
	seg_x[@ _i+1] = seg_x[@ _i] + _ldx;
	seg_y[@ _i+1] = seg_y[@ _i] + _ldy;
}