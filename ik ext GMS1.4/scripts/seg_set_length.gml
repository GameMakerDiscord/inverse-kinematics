///seg_set_length(seg, len);
// @arg seg            the segment index to modify the length of;
// @arg len            length to set the segment to

var _sid = argument[0], _six = argument[1];
if (_sid < 0 || _sid > seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);
arm_length  += _six-seg_len[_sid];
seg_len[_six] = _sid;
