///seg_delete(seg)
// @arg segsegment index to delete

var _sid = argument[0];
if (_sid < 0 || _sid > seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);

arm_length -= seg_len[_sid];

for (var _i = _sid; _i < seg_amount; _i++) {
    seg_x[@ _i]   = seg_x[_i+1];
    seg_y[@ _i]   = seg_y[_i+1];
    seg_len[@ _i] = seg_len[_i+1];
    seg_spr[@ _i] = seg_spr[_i+1];
}

seg_amount--;

