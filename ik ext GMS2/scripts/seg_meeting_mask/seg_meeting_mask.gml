/// @func seg_meeting_mask(seg, obj)
/// @arg seg	segment index
/// @arg obj	object/instance to check for collisions with

var _sid = argument[0],
	_obj = argument[1],
	_ssp = seg_spr[_sid];
	
if (_sid < 0 || _sid > seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);
if (!sprite_exists(_ssp))
	return false;
	
var _mto = (_sid+1 >= seg_amount)*2,
	_nid = _sid+1 - _mto,
	_psi = sprite_index,
	_pia = image_angle,
	_dir = (image_angle+point_direction(seg_x[_sid], seg_y[_sid], seg_x[_nid], seg_y[_nid])+90*_mto) mod 360,
	_opt = false;
	
sprite_index = _ssp;
image_angle	 = _dir;

_opt = place_meeting(seg_x[_sid], seg_y[_sid], _obj);

sprite_index = _psi;
image_angle	 = _pia;

return _opt;