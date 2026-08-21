/// @description Insert description here
// You can write your code in this editor

var _guiLargura = display_get_gui_width();
var _guiAltura = display_get_gui_height();

var _xx = 0;
var _yy = _guiAltura - 200;
var _c = c_black;

draw_rectangle_colour(_xx, _yy, _guiLargura, _guiAltura, _c, _c, _c, _c, false);
draw_text_ext(_xx + 32, _yy + 32, texto[pagina], 32, _guiLargura - 64);