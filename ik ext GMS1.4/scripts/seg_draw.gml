///seg_draw(seg)
// @arg segsegment index to draw

var _sid = argument[0];

if (seg_spr[_sid] >= 0 && sprite_exists(seg_spr[_sid])) {
    var _dir = point_direction(seg_x[_sid], seg_y[_sid], seg_x[_sid+1], seg_y[_sid+1]);
        draw_sprite_ext(seg_spr[_sid], image_index, 
        seg_x[_sid], seg_y[_sid], 
        image_xscale,    image_yscale, 
        (image_angle+_dir) mod 360, 
        image_blend,     image_alpha);
    return true;
} else draw_line(seg_x[_sid], seg_y[_sid], seg_x[_sid+1], seg_y[_sid+1]);
return false;

