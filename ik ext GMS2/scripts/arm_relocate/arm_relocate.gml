/// @desc moves an arm while maintaining the arm positions in relation to eachother
/// @func arm_relocate(x, y)
/// @arg x	x position to move to
/// @arg y	y position to move to

var tony_x = argument[0]-x,
	tony_y = argument[1]-y;

for(var tony_i = 0; tony_i <= seg_amount; tony_i++) {
	seg_x[@ tony_i] += tony_x;
	seg_y[@ tony_i] += tony_y;
}

x = argument[0];
y = argument[1];