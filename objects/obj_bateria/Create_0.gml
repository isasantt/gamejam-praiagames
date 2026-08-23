event_inherited();

// Se tiver qualquer coisa em cima da bateria, ela não pode ser arrastada

pode_arrastar = function() {
    return global.tampa_removida && !global.bateria_removida && !place_meeting(x, y , obj_celular_tampa) && !place_meeting(x, y, obj_pilha);
};

ao_soltar = function() {
    var _dx = abs(x - xstart);
    var _dy = abs(y - ystart);

    if (_dx > 200) || (_dy > 400) {
        global.bateria_removida = true;
    }
};