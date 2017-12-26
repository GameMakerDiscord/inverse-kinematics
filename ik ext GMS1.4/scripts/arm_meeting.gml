///arm_meeting(obj)
// @arg obj	object/instance to check for collisions against

var tony_obj = argument[0],
	tony_psi = sprite_index,
	tony_pia = image_angle;
	
for(var tony_sid = 0; tony_sid < seg_amount; tony_sid++) {
	var tony_ssp = seg_spr[tony_sid];
	
	if (sprite_exists(tony_ssp)) {
		var tony_nid = tony_sid+1,
			tony_dir = point_direction(seg_x[tony_sid], seg_y[tony_sid], seg_x[tony_nid], seg_y[tony_nid]);
	
		sprite_index = tony_ssp;
		image_angle	 = tony_dir;

		if (place_meeting(seg_x[tony_sid], seg_y[tony_sid], tony_obj)) {
			var tony_ist = instance_place(seg_x[tony_sid], seg_y[tony_sid], tony_obj);
			sprite_index = tony_psi;
			image_angle	 = tony_pia;
			return tony_ist;
		}
	} else {
		var tony_ist = seg_meeting_line(tony_sid, tony_obj);
		if (tony_ist >= 0) {
			sprite_index = tony_psi;
			image_angle	 = tony_pia;
			return tony_ist;
		}
	}
}

sprite_index = tony_psi;
image_angle	 = tony_pia;
return noone;

