// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_textos(){
	switch npc_nome {
		case "onça-pintuda":
			if global.celular_consertado {
				texto[0] = "Ai finalmente meu eyephone voltou a funcionar obgda";
			} else {
				texto[0] = "Oi bo dia";
				texto[1] = "Cunserta meu cerula";
				texto[2] = "Thank you";
			}
		break;
		case "lobo-guara":
			texto[0] = "Eai meu consagrado";
			texto[1] = "O carregador que eu comprei tem 3 pinos mas minha tomada tem só 2";
			texto[2] = "Consegue me ajudar?";
		break;
	}
}