/// @desc initialize arm object
/// @func arm_initialize(length, segments, sprite);
/// @arg length		the length of the whole arm
/// @arg segments	the amount of segments that the arm will have (idividual lines)
/// @arg sprite		sprite to assign every segment (OPTIONAL)

/////////////////////////////////////////////////////////////////
//////////  Important! Must be ran in all arm objects  //////////
/////////////////////////////////////////////////////////////////

var _sprite = sprite_index, _setspr = true;
	
if (argument_count > 2) {
	_sprite = argument[2];
}


arm_length = floor(argument[0]);
arm_pinned = false;

seg_amount = floor(argument[1]);
seg_x	   = [];
seg_y	   = [];
seg_len    = [];
seg_spr    = [];


if (is_array(_sprite)) {
	seg_spr = _sprite;
	_setspr = false;
}


var _default_length = arm_length div seg_amount;
for (var _i = 0; _i <= seg_amount; _i++) {
	
	seg_x[_i]	= x + _i * _default_length;
	seg_y[_i]	= y;
	seg_len[_i]	= _default_length;
	
	if (_setspr) seg_spr[_i] = _sprite;
}


return _default_length;