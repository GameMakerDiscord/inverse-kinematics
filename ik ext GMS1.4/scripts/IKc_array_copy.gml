///IKc_array_copy(array)
// @arg array           the array to copy from
var tony_out,
    tony_in  = argument[0],
    tony_len = array_length_1d(tony_in);
    
for (var tony_i = 0; tony_i < tony_len; tony_i++) {
    tony_out[tony_i] = tony_in[tony_i];
}

return tony_out;
