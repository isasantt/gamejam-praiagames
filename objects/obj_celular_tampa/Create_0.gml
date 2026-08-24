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
			var _fade = instance_find(obj_fade, 0);
			_fade.ir_para_sala(tela_lobo);
			global.celular_consertado = true;
        }
    }
};

depth = -1;