/// @desc initialize arm object
/// @func arm_initialize(length, segments, sprite);
/// @arg length		the length of the whole arm
/// @arg segments	the amount of segments that the arm will have (idividual lines)
/// @arg sprite		sprite to assign every segment (OPTIONAL)

/////////////////////////////////////////////////////////////////
//////////  Important! Must be ran in all arm objects  //////////
/////////////////////////////////////////////////////////////////

var tony_sprite = sprite_index, tony_setspr = true;
	
if (argument_count > 2) {
	tony_sprite = argument[2];
}


arm_length = floor(argument[0]);
arm_pinned = false;

seg_amount = floor(argument[1]);
seg_x	   = [];
seg_y	   = [];
seg_len    = [];
seg_spr    = [];


if (is_array(tony_sprite)) {
	seg_spr = tony_sprite;
	tony_setspr = false;
}


var tony_default_length = arm_length div seg_amount;
for (var tony_i = 0; tony_i <= seg_amount; tony_i++) {
	
	seg_x[tony_i]	= x + tony_i * tony_default_length;
	seg_y[tony_i]	= y;
	seg_len[tony_i]	= tony_default_length;
	
	if (tony_setspr) seg_spr[tony_i] = tony_sprite;
}


return tony_default_length;