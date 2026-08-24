event_inherited()
x_predestinado = 960
y_predestinado = 391
colocada = false;
pode_arrastar = function() {
    return !colocada
};

ao_soltar = function() {
        if global.benjamin_colocados = 2 && point_distance(x, y, x_predestinado, y_predestinado) < 50 {
            x = x_predestinado; 
			y = y_predestinado;
			var _fade = instance_find(obj_fade, 0);
			_fade.ir_para_sala(tela_lobo);
			colocada = true;
        }
};

