/// @func seg_add(len, spr)
/// @arg len	segment length
/// @arg spr	segment sprite
	
seg_amount++;
seg_x[@ seg_amount]	  = seg_x[seg_amount-1]+argument[0];
seg_y[@ seg_amount]	  = seg_y[seg_amount-1];
seg_len[@ seg_amount] = argument[0];
seg_spr[@ seg_amount] = argument[1];
arm_length += argument[0];