/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_dialogo) {
	global.dialogo = true;	
}

if global.trava_cima && global.trava_baixo {
    global.tampa_destravada = true;
}

if room == tela_final {
	if keyboard_check_pressed(vk_space) {
	game_end();	
	}
}