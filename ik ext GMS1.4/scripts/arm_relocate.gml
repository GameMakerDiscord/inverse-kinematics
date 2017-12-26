///arm_relocate(x, y)
// @arg xx position to move to
// @arg yy position to move to

var _x = argument[0]-x,
    _y = argument[1]-y;

for(var _i = 0; _i <= seg_amount; _i++) {
    seg_x[@ _i] += _x;
    seg_y[@ _i] += _y;
}

x = argument[0];
y = argument[1];
