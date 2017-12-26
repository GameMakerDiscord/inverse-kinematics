///arm_meeting_mask(obj)
// @arg obj	object/instance to check for collisions against

var _obj = argument[0],
	_psi = sprite_index,
	_pia = image_angle;
	
for(var _sid = 0; _sid < seg_amount; _sid++) {
	var _ssp = seg_spr[_sid];
	
	if (sprite_exists(_ssp)) {
		var _nid = _sid+1,
			_dir = point_direction(seg_x[_sid], seg_y[_sid], seg_x[_nid], seg_y[_nid]);
	
		sprite_index = _ssp;
		image_angle	 = _dir;

		if (place_meeting(seg_x[_sid], seg_y[_sid], _obj)) {
			var _ist = instance_place(seg_x[_sid], seg_y[_sid], _obj);
			sprite_index = _psi;
			image_angle	 = _pia;
			return _ist;
		}
	}
}

sprite_index = _psi;
image_angle	 = _pia;
return noone;

