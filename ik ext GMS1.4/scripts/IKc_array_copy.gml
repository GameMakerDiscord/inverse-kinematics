///IKc_array_copy(array)
// @arg array           the array to copy from
var _out,
    _in  = argument[0],
    _len = array_length_1d(_in);
    
for (var _i = 0; _i < _len; _i++) {
    _out[_i] = _in[_i];
}

return _out;
