if position_meeting(mouse_x, mouse_y, id) && pode_arrastar() {
    arrastando = true;
	mult_escala_alvo = 1.15;
    offset_x = x - mouse_x;
    offset_y = y - mouse_y;
}