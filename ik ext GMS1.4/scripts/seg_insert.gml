///seg_insert(seg, len, spr)
// @arg seg        segment index to insert before
// @arg len        length of the segment
// @arg spr        the sprite to assign the segment

var _sid = argument[0];
if (_sid < 0 || _sid > seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);

for (var _i = seg_amount+1; _i > _sid; _i--) {
    seg_x[@ _i]   = seg_x[_i-1];
    seg_y[@ _i]   = seg_y[_i-1];
    seg_len[@ _i] = seg_len[_i-1];
    seg_spr[@ _i] = seg_spr[_i-1];
}
arm_length += argument[1];
seg_len[@ _i] = argument[1];
seg_spr[@ _i] = argument[2];

seg_amount++;

