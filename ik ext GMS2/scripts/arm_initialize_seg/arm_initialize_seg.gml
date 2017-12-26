/// @desc initialize arm object by specifying segment lengths
/// @func arm_initialize_seg(segments, seg_length);
/// @arg segments		the amount of segments that the arm will have (idividual lines)
/// @arg seg_length		the length to assign each individual segment

/////////////////////////////////////////////////////////////////
//////////  Important! Must be ran in all arm objects  //////////
/////////////////////////////////////////////////////////////////

var _sprite = sprite_index, _setspr = true;
if (argument_count > 2) {
	_sprite = argument[2];
}


seg_amount				= floor(argument[0]);
var _default_length = floor(argument[1]);

seg_x	= [];
seg_y	= [];
seg_len = [];
seg_spr = [];

arm_length	= _default_length*seg_amount;
arm_pinned	= false;


if (is_array(_sprite)) {
	seg_spr = _sprite;
	_setspr = false;
}


for (var _i = 0; _i <= seg_amount; _i++) {
	
	seg_x[_i]	= x + _i * _default_length;
	seg_y[_i]	= y;
	seg_len[_i]	= _default_length;
	
	if (_setspr) seg_spr[_i] = _sprite;
}


return arm_length;