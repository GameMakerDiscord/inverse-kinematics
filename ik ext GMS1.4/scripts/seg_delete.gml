///seg_delete(seg)
// @arg segsegment index to delete

var tony_sid = argument[0];
if (tony_sid < 0 || tony_sid > seg_amount) show_error("segment index out of range: seg[" + string(tony_sid) + "], seg_amount = " + string(seg_amount), true);

arm_length -= seg_len[tony_sid];

for (var tony_i = tony_sid; tony_i < seg_amount; tony_i++) {
    seg_x[@ tony_i]   = seg_x[tony_i+1];
    seg_y[@ tony_i]   = seg_y[tony_i+1];
    seg_len[@ tony_i] = seg_len[tony_i+1];
    seg_spr[@ tony_i] = seg_spr[tony_i+1];
}

seg_amount--;

