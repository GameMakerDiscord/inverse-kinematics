///arm_set_length(length, segments)
// @arg lengthlength of the whole arm
// @arg segmentsamount of segments to divide the arm into

// segment lengths will be calculated accordingly

var tony_psa = seg_amount;
arm_length = floor(argument[0]);
if (argument_count > 1) seg_amount = floor(argument[1]);

if (seg_amount < 0)  seg_amount = abs(seg_amount);
if (seg_amount == 0) seg_amount = 1;


var tony_default_length = arm_length div seg_amount;

for(var tony_i = 0; tony_i <= seg_amount; tony_i++) {
    seg_len[@ tony_i] = tony_default_length;
    
    if (tony_i >= tony_psa) {
        seg_x[@ tony_i] = seg_x[tony_i-1]+tony_default_length;
        seg_y[@ tony_i] = seg_y[tony_i-1];
        seg_spr[@ tony_i] = sprite_index;
    }
}

return tony_default_length;

