if !clicada && position_meeting(mouse_x, mouse_y, id) {
	clicada = true;
	global.trava_baixo = true;
}

show_debug_message("clicou");