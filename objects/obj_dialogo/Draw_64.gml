/// @description Insert description here
// You can write your code in this editor

var _guiLargura = display_get_gui_width();
var _guiAltura = display_get_gui_height();

var _xx = 250;
var _yy = _guiAltura - 400;
var _c = c_black;

draw_sprite(spr_caixa_dialogo, 0, _xx, _yy);
draw_set_font(font_dialogo);
draw_text_ext(_xx + 32, _yy + 32, texto[pagina], 32, _guiLargura - 64);
draw_set_colour(c_white);