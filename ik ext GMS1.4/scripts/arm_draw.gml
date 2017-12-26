///arm_draw()

for (var _i = 0; _i < seg_amount; _i++) {
	
	if (seg_spr[_i] >= 0 && sprite_exists(seg_spr[_i])) {
			
			var _dir = point_direction(seg_x[_i], seg_y[_i], seg_x[_i+1], seg_y[_i+1]);
			draw_sprite_ext(seg_spr[_i],	image_index, 
							seg_x[_i],		seg_y[_i], 
							image_xscale,		image_yscale, 
							(image_angle+_dir) mod 360, 
							image_blend,		image_alpha);
			
	} else draw_line(seg_x[_i], seg_y[_i], seg_x[_i+1], seg_y[_i+1]);
}

