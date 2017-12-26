///arm_set_length(length, segments)
// @arg lengthlength of the whole arm
// @arg segmentsamount of segments to divide the arm into

// segment lengths will be calculated accordingly

var _psa = seg_amount;
arm_length = floor(argument[0]);
if (argument_count > 1) seg_amount = floor(argument[1]);

if (seg_amount < 0)  seg_amount = abs(seg_amount);
if (seg_amount == 0) seg_amount = 1;


var _default_length = arm_length div seg_amount;

for(var _i = 0; _i <= seg_amount; _i++) {
    seg_len[@ _i] = _default_length;
    
    if (_i >= _psa) {
        seg_x[@ _i] = seg_x[_i-1]+_default_length;
        seg_y[@ _i] = seg_y[_i-1];
        seg_spr[@ _i] = sprite_index;
    }
}

return _default_length;

