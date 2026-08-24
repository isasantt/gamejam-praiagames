var _guiLargura = display_get_gui_width();
var _guiAltura = display_get_gui_height();

var _xx = 250;
var _yy = _guiAltura - 400;

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite(spr_caixa_dialogo, 0, _xx, _yy);

draw_set_font(font_dialogo);
draw_text_ext(_xx + 50, _yy + 100, texto[pagina], 32, _guiLargura - 64);

if (global.dialogo == true) {
    var _alpha = 0.5 + sin(pulso) * 0.5;

    draw_set_alpha(_alpha);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(
        _guiLargura / 2,
        _guiAltura - 80,
        "PRESSIONE ESPAÇO PARA CONTINUAR"
    );

    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
