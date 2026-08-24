event_inherited();
colocada = false;


ao_pegar = function() {
    depth = --global.proxima_depth_pilha;
};

pode_arrastar = function() {
    if colocada || !global.bateria_removida return false;
    
    if place_meeting(x, y, obj_celular_tampa) return false;
    
    var _lista = ds_list_create();
    var _num = instance_place_list(x, y, obj_pilha, _lista, false);
    var _bloqueada = false;
    
    for (var i = 0; i < _num; i++) {
        var _outra = _lista[| i];
        
        if _outra != id && _outra.depth < depth {
            _bloqueada = true;
            break;
        }
    }
    
    ds_list_destroy(_lista);
    return !_bloqueada;
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