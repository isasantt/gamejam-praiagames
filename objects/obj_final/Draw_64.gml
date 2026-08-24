var _guiLargura = display_get_gui_width();
var _guiAltura = display_get_gui_height();

var _alpha = 0.5 + sin(pulso) * 0.5;

draw_set_alpha(_alpha);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(
    _guiLargura / 2,
    _guiAltura - 80,
    "PRESSIONE ESPAÇO PARA FECHAR"
);

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);