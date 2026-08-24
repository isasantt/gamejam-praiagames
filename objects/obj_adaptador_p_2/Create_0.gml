event_inherited();
colocada = false;
adaptador1 = instance_id_get(inst_adaptador_p_1);

pode_arrastar = function() {
	
    return !colocada && !place_meeting(x, y , obj_adaptador_g);
};

ao_soltar = function() {

    var _melhor_slot = -1;
    var _menor_dist = 40;

    for (var i = 0; i < array_length(global.benjamin_slots); i++) {
        if !global.benjamin_ocupado[i] {
            var _s = global.benjamin_slots[i];
            var _d = point_distance(x, y, _s[0], _s[1]);
            if _d < _menor_dist {
                _menor_dist = _d;
                _melhor_slot = i;
            }
        }
    }

    if _melhor_slot != -1 {
    x = global.benjamin_slots[_melhor_slot][0];
    y = global.benjamin_slots[_melhor_slot][1];
    colocada = true;
    global.benjamin_ocupado[_melhor_slot] = true;
    global.benjamin_colocados++;

    rot_alvo = 0;
    image_angle = 0;
	}
};