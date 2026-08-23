event_inherited();

pode_arrastar = function() {
    return global.tampa_removida && !global.bateria_removida;
};

ao_soltar = function() {
    var _dx = abs(x - xstart);
    var _dy = abs(y - ystart);

    if (_dx > 200) || (_dy > 400) {
        global.bateria_removida = true;
    }
};