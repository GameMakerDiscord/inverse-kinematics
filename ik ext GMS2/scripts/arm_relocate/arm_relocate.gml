/// @desc moves an arm while maintaining the arm positions in relation to eachother
/// @func arm_relocate(x, y)
/// @arg x	x position to move to
/// @arg y	y position to move to

var _x = argument[0]-x,
	_y = argument[1]-y;

for(var _i = 0; _i <= seg_amount; _i++) {
	seg_x[@ _i] += _x;
	seg_y[@ _i] += _y;
}

x = argument[0];
y = argument[1];