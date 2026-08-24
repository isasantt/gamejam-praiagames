alpha = 0;
estado = "nenhum";
velocidade = 0.04;
sala_destino = noone;
delay_espera = 0; //isso é em segundos

ir_para_sala = function(_room, _delay = 0) {
    sala_destino = _room;
    delay_espera = _delay;
    estado = "saindo";
};