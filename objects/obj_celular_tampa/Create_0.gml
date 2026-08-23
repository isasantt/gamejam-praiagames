event_inherited();

pode_arrastar = function() {
    return global.tampa_destravada;
};

ao_soltar = function() {
    if !global.tampa_removida {
        if point_distance(x, y, xstart, ystart) > 100 {
            global.tampa_removida = true;
        }
    } else {
        if global.pilhas_colocadas = 4 && point_distance(x, y, xstart, ystart) < 50 {
            x = xstart; 
			y = ystart;
            global.tampa_removida = false;
			room_goto(tela_principal);
			global.celular_consertado = true;
        }
    }
};

depth = -1;