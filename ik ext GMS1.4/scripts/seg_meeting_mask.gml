///seg_meeting_mask(seg, obj)
// @arg seg	segment index
// @arg obj	object/instance to check for collisions with

var tony_sid = argument[0],
	tony_obj = argument[1],
	tony_ssp = seg_spr[tony_sid];
	
if (tony_sid < 0 || tony_sid > seg_amount) show_error("segment index out of range: seg[" + string(tony_sid) + "], seg_amount = " + string(seg_amount), true);
if (!sprite_exists(tony_ssp))
	return false;
	
var tony_mto = (tony_sid+1 >= seg_amount)*2,
	tony_nid = tony_sid+1 - tony_mto,
	tony_psi = sprite_index,
	tony_pia = image_angle,
	tony_dir = (image_angle+point_direction(seg_x[tony_sid], seg_y[tony_sid], seg_x[tony_nid], seg_y[tony_nid])+90*tony_mto) mod 360,
	tony_opt = false;
	
sprite_index = tony_ssp;
image_angle	 = tony_dir;

tony_opt = place_meeting(seg_x[tony_sid], seg_y[tony_sid], tony_obj);

sprite_index = tony_psi;
image_angle	 = tony_pia;

return tony_opt;

