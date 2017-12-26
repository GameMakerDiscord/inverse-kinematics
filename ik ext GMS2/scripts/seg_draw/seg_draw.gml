/// @func seg_draw(seg)
/// @arg seg	segment index to draw

var tony_sid = argument[0];

if (seg_spr[tony_sid] >= 0 && sprite_exists(seg_spr[tony_sid])) {
	var tony_dir = point_direction(seg_x[tony_sid], seg_y[tony_sid], seg_x[tony_sid+1], seg_y[tony_sid+1]);
	draw_sprite_ext(seg_spr[tony_sid],	image_index, 
					seg_x[tony_sid],	seg_y[tony_sid], 
					image_xscale,		image_yscale, 
					(image_angle+tony_dir) mod 360, 
					image_blend,		image_alpha);
	return true;
} else draw_line(seg_x[tony_sid], seg_y[tony_sid], seg_x[tony_sid+1], seg_y[tony_sid+1]);
return false;