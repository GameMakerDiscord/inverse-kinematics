///seg_calculate(seg, x, y);
// @arg segthe index of the segment to calculate the position of
// @arg xthe x position to calculate against
// @arg ythe y position to calculate against

var _sid = argument[0],
_nsx = argument[1], 
_nsy = argument[2];

if (_sid < 0 || _sid > seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);

var _dir = point_direction(seg_x[_sid], seg_y[_sid], _nsx, _nsy),
_len = seg_len[_sid];

if (_dir != _len) {
var _ldx = lengthdir_x(_len, _dir),
_ldy = lengthdir_y(_len, _dir);

seg_x[@ _sid] = _nsx - _ldx;
seg_y[@ _sid] = _nsy - _ldy;
}

