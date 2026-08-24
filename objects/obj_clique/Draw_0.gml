var raio_atual = raio_base + (sin(tempo) * amplitude);
var alpha_atual = 0.5 + (sin(tempo) * 0.3);

if global.dialogo == false {
    draw_set_color(c_white);
    draw_set_alpha(alpha_atual);
    draw_circle(x, y, raio_atual, false);
    draw_set_alpha(1);
}