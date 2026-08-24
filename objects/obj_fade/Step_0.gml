switch estado {
    case "saindo":
        alpha += velocidade;
        if alpha >= 1 {
            alpha = 1;
            if delay_espera > 0 {
                alarm[0] = delay_espera * room_speed;
                estado = "esperando";
            } else {
                room_goto(sala_destino);
                estado = "trocando";
            }
        }
    break;

    case "entrando":
        alpha -= velocidade;
        if alpha <= 0 {
            alpha = 0;
            estado = "nenhum";
        }
    break;
}