/// @func seg_meeting(seg, obj);
/// @arg seg	segment index
/// @arg obj	object/instance to check for collisions with

var _sid = argument[0];
if (_sid < 0 || _sid > seg_amount) show_error("segment index out of range: seg[" + string(_sid) + "], seg_amount = " + string(seg_amount), true);
if (sprite_exists(seg_spr[_sid])) {
		return seg_meeting_mask(_sid, argument[1]);
} else	return seg_meeting_line(_sid, argument[1]);