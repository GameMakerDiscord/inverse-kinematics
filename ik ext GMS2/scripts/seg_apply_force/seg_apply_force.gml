/// @desc apply vector force to a segment
/// @func seg_apply_force(seg, force, dir)
/// @arg seg	segment index
/// @arg force	force to apply
/// @arg dir	direction to apply force

var _sid = argument[0],
	_len = argument[1],
	_dir = argument[2];
	
if (_sid < 0 || _sid > seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);
	
var _ldx = lengthdir_x(_len, _dir),
	_ldy = lengthdir_y(_len, _dir);
	
seg_x[@ _sid] += _ldx;
seg_y[@ _sid] += _ldy;