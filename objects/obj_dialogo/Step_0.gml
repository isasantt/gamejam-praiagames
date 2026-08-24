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
		
		
		if destino != noone {
			var _fade = instance_find(obj_fade, 0);
			_fade.ir_para_sala(destino, 0.3);
		}
	}
}