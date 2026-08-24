/// @description Insert description here
// You can write your code in this editor

if inicializar == false {
	src_textos();
	inicializar = true;
}


if keyboard_check_pressed(vk_space) {
	if pagina < array_length(texto) - 1 {
		pagina++;	
	} else {
		global.dialogo = false;
		instance_destroy();
		room_goto(gambiarra_1);
		if room_atual == tela_onca {
			room_goto(gambiarra_1)	
		} else {
			room_goto(gambiarra_2)	
		}
	}
}