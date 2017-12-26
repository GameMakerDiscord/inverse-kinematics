///arm_draw()

for (var tony_i = 0; tony_i < seg_amount; tony_i++) {
	
	if (seg_spr[tony_i] >= 0 && sprite_exists(seg_spr[tony_i])) {
			
			var tony_dir = point_direction(seg_x[tony_i], seg_y[tony_i], seg_x[tony_i+1], seg_y[tony_i+1]);
			draw_sprite_ext(seg_spr[tony_i],	image_index, 
							seg_x[tony_i],		seg_y[tony_i], 
							image_xscale,		image_yscale, 
							(image_angle+tony_dir) mod 360, 
							image_blend,		image_alpha);
			
	} else draw_line(seg_x[tony_i], seg_y[tony_i], seg_x[tony_i+1], seg_y[tony_i+1]);
}

