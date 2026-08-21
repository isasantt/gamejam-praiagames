/// @description Insert description here
// You can write your code in this editor

#region 
if mouse_check_button_pressed(mb_left) && global.dialogo == false && position_meeting(mouse_x, mouse_y, obj_onca){
	var _npc = instance_nearest(x, y, obj_par_npcs);
	var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
	_dialogo.npc_nome = _npc.nome;
}
#endregion