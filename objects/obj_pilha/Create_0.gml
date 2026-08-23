event_inherited();
colocada = false;

pode_arrastar = function() {
    return global.bateria_removida && !colocada;
};

ao_soltar = function() {
    if !(global.tampa_removida && global.bateria_removida) return;

    var _melhor_slot = -1;
    var _menor_dist = 40;

    for (var i = 0; i < array_length(global.pilha_slots); i++) {
        if !global.slot_ocupado[i] {
            var _s = global.pilha_slots[i];
            var _d = point_distance(x, y, _s[0], _s[1]);
            if _d < _menor_dist {
                _menor_dist = _d;
                _melhor_slot = i;
            }
        }
    }

    if _melhor_slot != -1 {
    x = global.pilha_slots[_melhor_slot][0];
    y = global.pilha_slots[_melhor_slot][1];
    colocada = true;
    global.slot_ocupado[_melhor_slot] = true;
    global.pilhas_colocadas++;

    rot_alvo = 0;
    image_angle = 0;
	}
};