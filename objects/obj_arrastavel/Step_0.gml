if arrastando {
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
}

mult_escala += (mult_escala_alvo - mult_escala) * 0.2;
image_xscale = escala_base_x * mult_escala;
image_yscale = escala_base_y * mult_escala;

if arrastando {
    rot_alvo = (mouse_x - x) * 0.05;
} else {
    rot_alvo = 0;
}
image_angle += (rot_alvo - image_angle) * 0.15;